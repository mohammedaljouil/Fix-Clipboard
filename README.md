# Fix-Clipboard

A lightweight automation script designed to instantly restore and synchronize the shared clipboard (copy-paste mechanism) between host machines and **Kali Linux** guest environments running on **VMware Workstation/Player**—without needing a system reboot.

---

## 🌍 Language / اللغات
* [English](#-english-version)
* [النسخة العربية](#-النسخة-العربية)

---

## 🇬🇧 English Version

### 🔍 Technical Root Cause Analysis
Recent Linux Kernel updates combined with security boundaries enforced by modern display server protocols (such as Wayland or updated X11 architectures) frequently cause the primary VMware user-space tools (`vmusr` and `vmware-user`) to enter a **zombie state** mid-session. 

Instead of executing a full virtual machine reboot and losing active terminal states, this tool provides an instant **hot-fix** by:
1. Auditing and forcefully terminating corrupted or frozen virtualization listener threads.
2. Gracefully restarting the core underlying `open-vm-tools` guest system daemon.
3. Respawning a clean user-space clipboard listener synchronized with your active display server.

### 🛠️ Installation & Setup

1. Clone the repository or download the script:
   ```bash
   git clone https://github.com/mohammedaljouil/Fix-Clipboard/
   ```

2. Grant executable permissions to the script:
   ```bash
   cd Fix-Clipboard
   chmod +x fix-clip.sh
   ```

### 🚀 Usage
Whenever your copy-paste functionality freezes, simply run the script from your terminal:
```bash
./fix-clip.sh
```

---

## 🇸🇦 النسخة العربية

### ⚙️ التحليل والآلية التقنية
تتسبب التحديثات الدورية لنواة لينكس (Kernel) بالتكامل مع القيود الأمنية الصارمة التي تفرضها خوادم العرض الحديثة (مثل Wayland أو بنيات X11 المحدثة) في دخول أدوات VMware الأساسية في مساحة المستخدم (`vmusr` و `vmware-user`) في حالة جمود (Zombie State) بشكل مفاجئ أثناء العمل.

بدلاً من اللجوء لإعادة تشغيل النظام بالكامل (Reboot) وضياع جلسات العمل والنوافذ المفتوحة، توفر هذه الأداة **إصلاحاً فورياً (Hot-Fix)** عبر:
1. تتبع وإنهاء خيوط المعالجة (Threads) التالفة أو المعلقة الخاصة بالمحاكاة الافتراضية.
2. إعادة تشغيل محرك الخدمات الأساسي الخلفي لـ `open-vm-tools` بشكل آمن ونظيف.
3. إعادة بناء مستمع نظيف للذاكرة المشتركة متزامن بالكامل مع واجهة المستخدم الرسومية النشطة.

### 🛠️ الإعداد والتثبيت

1. قم بجلب المستودع إلى جهازك:
   ```bash
   git clone https://github.com/mohammedaljouil/Fix-Clipboard/
   ```

2. امنح السكربت صلاحيات التنفيذ اللازمة:
   ```bash
   cd Fix-Clipboard
   chmod +x fix-clip.sh
   ```

### 🚀 طريقة الاستخدام
في أي وقت تتوقف فيه ميزة النسخ واللصق عن الاستجابة، افتح الـ Terminal ونفّذ الأمر التالي مباشرة:
```bash
./fix-clip.sh
```

