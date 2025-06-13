#!/bin/bash

echo "📱 Listing connected devices..."
devices=$(flutter devices --machine | grep '"id":' | cut -d'"' -f4)

if [ -z "$devices" ]; then
  echo "❌ No devices found."
  exit 1
fi

for device in $devices; do
  echo ""
  echo "🚀 Running integration test on device: $device"
  flutter -d $device test integration_test/app_test.dart

  if [ $? -eq 0 ]; then
    echo "✅ Test passed on $device"
  else
    echo "❌ Test failed on $device"
  fi
done