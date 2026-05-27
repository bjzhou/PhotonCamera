.class public final Lfus;
.super Ljava/lang/Object;

# interfaces
.implements Lfuq;


# static fields
.field public static final a:Lnak;


# instance fields
.field public b:Ljuf;

.field public c:Lnou;

.field public d:Lftg;

.field public e:Lfux;

.field public f:Lflg;

.field public g:Lfuz;

.field private final h:Lkcs;

.field private final i:Ligx;

.field private final j:Ldhi;

.field private final k:Ldna;

.field private final l:Ljava/lang/Runnable;

.field private final m:Lklx;

.field private final n:Lgxb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/one/capture/CaptureCameraDeviceManagerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfus;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lkcs;Lgxb;Lklx;Ligx;Ldhi;Ldna;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p7, Lfof;

    const/16 v0, 0xe

    invoke-direct {p7, p0, v0}, Lfof;-><init>(Lfus;I)V

    iput-object p7, p0, Lfus;->l:Ljava/lang/Runnable;

    iput-object p1, p0, Lfus;->h:Lkcs;

    iput-object p2, p0, Lfus;->n:Lgxb;

    iput-object p3, p0, Lfus;->m:Lklx;

    iput-object p4, p0, Lfus;->i:Ligx;

    iput-object p5, p0, Lfus;->j:Ldhi;

    iput-object p6, p0, Lfus;->k:Ldna;

    invoke-virtual {p1}, Lkcs;->a()Ljuf;

    move-result-object p1

    iput-object p1, p0, Lfus;->b:Ljuf;

    return-void
.end method

.method public static bridge synthetic b(Lfus;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lfus;->c:Lnou;

    return-void
.end method


# virtual methods
.method public final a(Ldbf;Lfux;Lika;)Lflj;
    .locals 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lflj;

    iget-object v1, p0, Lfus;->l:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Lflj;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ldbf;->d()Lklv;

    move-result-object p1

    iget-object v1, p0, Lfus;->k:Ldna;

    iget-object v2, p0, Lfus;->m:Lklx;

    iget-object v3, p0, Lfus;->j:Ldhi;

    invoke-virtual {v1, v2, v3, p1}, Ldna;->b(Lklj;Ldhi;Lklv;)Lkll;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lfus;->n:Lgxb;

    invoke-virtual {v1, p1, p3}, Lgxb;->h(Lkll;Lika;)Lflg;

    move-result-object p1

    iput-object p1, p0, Lfus;->f:Lflg;

    iput-object p2, p0, Lfus;->e:Lfux;

    iget-object p2, p0, Lfus;->b:Ljuf;

    invoke-virtual {p2}, Ljuf;->close()V

    iget-object p2, p0, Lfus;->h:Lkcs;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "CaptureCameraDeviceOpener : "

    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lkcs;->b(Ljava/lang/String;)Lkad;

    move-result-object p2

    iget-object p3, p0, Lfus;->h:Lkcs;

    invoke-virtual {p3}, Lkcs;->a()Ljuf;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljuf;->d(Lkad;)V

    iput-object p3, p0, Lfus;->b:Ljuf;

    iget-object p2, p0, Lfus;->m:Lklx;

    iget-object v1, p1, Lflg;->a:Lkll;

    invoke-virtual {p2, v1}, Lklx;->f(Lkll;)Lfuz;

    move-result-object p2

    iput-object p2, p0, Lfus;->g:Lfuz;

    new-instance p2, Lcjd;

    invoke-direct {p2}, Lcjd;-><init>()V

    invoke-virtual {p3, p2}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Lfus;->e:Lfux;

    iget-object v2, p0, Lfus;->i:Ligx;

    invoke-static {v2}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lfux;->b(Lflg;Lnou;)Lnou;

    move-result-object p1

    iput-object p1, p0, Lfus;->c:Lnou;

    new-instance v1, Lfur;

    invoke-direct {v1, p0, p2, v0, p3}, Lfur;-><init>(Lfus;Lcjd;Lflj;Ljuf;)V

    const-string p2, "CCDevMngr"

    invoke-static {p2}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
