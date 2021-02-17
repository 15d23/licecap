#!/bin/sh

cat > __license.xml <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>LPic</key>
    <array>
        <dict>
            <key>Attributes</key>
            <string>0x0000</string>
            <key>Data</key>
            <data>
            AAAAAgAAAAAAAAAIAAMAAA==
            </data>
            <key>ID</key>
            <string>5000</string>
            <key>Name</key>
            <string></string>
        </dict>
    </array>
    <key>TEXT</key>
    <array>
        <dict>
            <key>Attributes</key>
            <string>0x0000</string>
            <key>Data</key>
            <data>
EOF

base64 -b 80 ./license-cleaned.txt >> __license.xml

cat >> __license.xml <<EOF
            </data>
            <key>ID</key>
            <string>5000</string>
            <key>Name</key>
            <string>English SLA</string>
        </dict>
    </array>
    <key>STR#</key>
    <array>
        <dict>
            <key>Attributes</key>
            <string>0x0000</string>
            <key>Data</key>
            <data>
            AAYNRW5nbGlzaCB0ZXN0MQVBZ3JlZQhEaXNhZ3JlZQVQcmludAdT
            YXZlLi4ueklmIHlvdSBhZ3JlZSB3aXRoIHRoZSB0ZXJtcyBvZiB0
            aGlzIGxpY2Vuc2UsIGNsaWNrICJBZ3JlZSIgdG8gYWNjZXNzIHRo
            ZSBzb2Z0d2FyZS4gIElmIHlvdSBkbyBub3QgYWdyZWUsIHByZXNz
            ICJEaXNhZ3JlZS4i
            </data>
            <key>ID</key>
            <string>5000</string>
            <key>Name</key>
            <string>English buttons</string>
        </dict>
        <dict>
            <key>Attributes</key>
            <string>0x0000</string>
            <key>Data</key>
            <data>
            AAYHRW5nbGlzaAVBZ3JlZQhEaXNhZ3JlZQVQcmludAdTYXZlLi4u
            e0lmIHlvdSBhZ3JlZSB3aXRoIHRoZSB0ZXJtcyBvZiB0aGlzIGxp
            Y2Vuc2UsIHByZXNzICJBZ3JlZSIgdG8gaW5zdGFsbCB0aGUgc29m
            dHdhcmUuICBJZiB5b3UgZG8gbm90IGFncmVlLCBwcmVzcyAiRGlz
            YWdyZWUiLg==
            </data>
            <key>ID</key>
            <string>5002</string>
            <key>Name</key>
            <string>English</string>
        </dict>
    </array>
    <key>TMPL</key>
    <array>
        <dict>
            <key>Attributes</key>
            <string>0x0000</string>
            <key>Data</key>
            <data>
            E0RlZmF1bHQgTGFuZ3VhZ2UgSUREV1JEBUNvdW50T0NOVAQqKioq
            TFNUQwtzeXMgbGFuZyBJRERXUkQebG9jYWwgcmVzIElEIChvZmZz
            ZXQgZnJvbSA1MDAwRFdSRBAyLWJ5dGUgbGFuZ3VhZ2U/RFdSRAQq
            KioqTFNURQ==
            </data>
            <key>ID</key>
            <string>128</string>
            <key>Name</key>
            <string>LPic</string>
        </dict>
    </array>
</dict>
</plist>
EOF

hdiutil udifrez $1 -xml __license.xml
