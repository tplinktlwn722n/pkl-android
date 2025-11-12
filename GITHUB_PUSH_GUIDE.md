# Panduan Push ke GitHub

## Langkah 1: Buat Repository Baru di GitHub

1. Login ke akun GitHub Anda
2. Klik tombol "+" di pojok kanan atas, pilih "New repository"
3. Isi nama repository (contoh: `flutter-todo-app`)
4. **JANGAN** centang "Initialize this repository with a README"
5. Klik "Create repository"

## Langkah 2: Konfigurasi Git (Jika Belum)

Buka terminal/PowerShell di folder project dan jalankan:

```bash
# Ganti dengan nama Anda
git config user.name "Nama Anda"

# Ganti dengan email GitHub Anda
git config user.email "email@example.com"
```

## Langkah 3: Hubungkan dengan Remote Repository

Ganti `YOUR-USERNAME` dan `REPOSITORY-NAME` dengan username dan nama repository Anda:

```bash
git remote add origin https://github.com/YOUR-USERNAME/REPOSITORY-NAME.git
```

Contoh:
```bash
git remote add origin https://github.com/johndoe/flutter-todo-app.git
```

## Langkah 4: Push ke GitHub

```bash
# Rename branch ke main (opsional, jika masih master)
git branch -M main

# Push ke GitHub
git push -u origin main
```

## Langkah 5: Verifikasi

1. Buka browser dan pergi ke repository GitHub Anda
2. Refresh halaman
3. Anda akan melihat semua file sudah ter-upload

## Tips Tambahan

### Jika Push Gagal karena Authentication

GitHub sudah tidak support password untuk push. Gunakan salah satu metode berikut:

#### Metode 1: Personal Access Token (PAT)
1. Pergi ke GitHub Settings > Developer settings > Personal access tokens > Tokens (classic)
2. Generate new token
3. Pilih scope `repo`
4. Copy token yang di-generate
5. Saat push, gunakan token sebagai password

#### Metode 2: SSH Key (Recommended)
```bash
# Generate SSH key
ssh-keygen -t ed25519 -C "your_email@example.com"

# Copy public key
cat ~/.ssh/id_ed25519.pub

# Tambahkan ke GitHub Settings > SSH and GPG keys

# Ubah remote URL
git remote set-url origin git@github.com:YOUR-USERNAME/REPOSITORY-NAME.git

# Push
git push -u origin main
```

## Update untuk Future Changes

Setelah push pertama, untuk update selanjutnya:

```bash
# Add changes
git add .

# Commit
git commit -m "Your commit message"

# Push
git push
```

---

**Catatan Penting:**
- File `.gitignore` sudah dikonfigurasi untuk exclude file yang tidak perlu
- LICENSE sudah menggunakan MIT License (Anda bisa ubah nama copyright di file LICENSE)
- Semua jejak repository sebelumnya sudah dihapus
- Project sudah di-commit dengan nama "Initial commit"

Selamat! Repository Anda siap di-push ke GitHub! 🎉
