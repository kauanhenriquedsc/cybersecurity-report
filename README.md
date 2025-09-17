# Relatório Cybersecurity:

> Conteúdo: **Preparação do ambiente de testes**, **Introdução**, **SQL Injection**, **SQLmap**, **Cross-Site Scripting (XSS)**, **BeEF**, **Command Injection**, **Commix**, **LFI (Local File Inclusion)**, **RFI (Remote File Inclusion)**, **Denial of Service (DoS)**, **Sniffers & Spoofing**, **Brute Force**, **Testes automatizados**.  
> Formato: **Markdown técnico** — com exemplos, payloads, comandos de ferramentas, detecções e mitigação.

---

## Sumário
1. [Preparação do ambiente de testes](#1-preparação-do-ambiente-de-testes)  
2. [Conceitos gerais de segurança de aplicações](#2-conceitos-gerais-de-segurança-de-aplicações)  
3. [SQL Injection (SQLi)](#3-sql-injection-sqli)  
4. [SQLmap — uso prático e recomendações](#4-sqlmap---uso-prático-e-recomendações)  
5. [Cross-Site Scripting (XSS)](#5-cross-site-scripting-xss)  
7. [Command Injection (OS command injection)](#7-command-injection-os-command-injection)  
8. [Commix — automação de command injection](#8-commix---automação-de-command-injection)  
6. [BeEF (Browser Exploitation Framework)](#6-beef-browser-exploitation-framework)  
9. [LFI — Local File Inclusion](#9-lfi---local-file-inclusion)  
10. [RFI — Remote File Inclusion](#10-rfi---remote-file-inclusion)  
11. [Denial of Service (DoS/DDoS)](#11-denial-of-service-dosddos)  
12. [Sniffers & Spoofing (rede)](#12-sniffers--spoofing-rede)  
13. [Brute Force](#13-brute-force)  
14. [Testes automatizados (SAST, DAST, CI/CD)](#14-testes-automatizados-sast-dast-cicd)  
15. [Checklist de auditoria, logs e regras SIEM recomendadas](#15-checklist-de-auditoria-logs-e-regras-siem-recomendadas)  
16. [Referências selecionadas](#16-referências-selecionadas)

