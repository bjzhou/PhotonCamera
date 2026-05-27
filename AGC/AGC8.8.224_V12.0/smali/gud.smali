.class public final Lgud;
.super Lgug;


# static fields
.field public static final b:Lnak;

.field private static final l:Lj$/time/Duration;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Lmrl;

.field public final e:Landroid/view/WindowManager;

.field public final f:Lhgy;

.field public final g:Lgue;

.field public final h:Lihg;

.field public final i:Landroid/os/Handler;

.field public final j:Lnom;

.field public final k:Ldja;

.field private final m:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field private final n:Lcom/google/android/apps/camera/bottombar/BottomBarListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com/google/android/apps/camera/rewind/RewindControllerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgud;->b:Lnak;

    const-wide/16 v0, 0xfa

    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    sput-object v0, Lgud;->l:Lj$/time/Duration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmrl;Ldja;Lcom/google/android/apps/camera/bottombar/BottomBarController;Libj;Lgue;Lihg;Landroid/view/WindowManager;Lhgy;Lnom;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Lgug;-><init>()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p11

    invoke-static {p11}, Ljvd;->o(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p11

    iput-object p11, p0, Lgud;->i:Landroid/os/Handler;

    iput-object p1, p0, Lgud;->c:Landroid/content/Context;

    iput-object p2, p0, Lgud;->d:Lmrl;

    iput-object p3, p0, Lgud;->k:Ldja;

    iput-object p4, p0, Lgud;->m:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iput-object p6, p0, Lgud;->g:Lgue;

    iput-object p7, p0, Lgud;->h:Lihg;

    iput-object p8, p0, Lgud;->e:Landroid/view/WindowManager;

    iput-object p9, p0, Lgud;->f:Lhgy;

    iput-object p10, p0, Lgud;->j:Lnom;

    new-instance p1, Lguc;

    invoke-direct {p1, p5}, Lguc;-><init>(Libj;)V

    iput-object p1, p0, Lgud;->n:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    return-void
.end method


# virtual methods
.method public final cc()V
    .locals 0

    return-void
.end method

.method public final cd()V
    .locals 2

    iget-object v0, p0, Lgud;->m:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v1, p0, Lgud;->n:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->removeListener(Lcom/google/android/apps/camera/bottombar/BottomBarListener;)V

    return-void
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lgud;->m:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v1, p0, Lgud;->n:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->addListener(Lcom/google/android/apps/camera/bottombar/BottomBarListener;)V

    return-void
.end method

.method public final n()V
    .locals 0

    return-void
.end method

.method public final p()V
    .locals 0

    return-void
.end method

.method public final t()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
