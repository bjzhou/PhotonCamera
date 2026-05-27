.class public Lejo;
.super Lejl;


# instance fields
.field public final d:Liff;

.field public final e:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field public final f:Lgeh;

.field public final g:Leik;

.field public final h:Ljew;


# direct methods
.method public constructor <init>(Liff;Lcom/google/android/apps/camera/bottombar/BottomBarController;Lgeh;Leik;Ljew;[B[B)V
    .locals 0

    invoke-direct {p0}, Lejl;-><init>()V

    iput-object p1, p0, Lejo;->d:Liff;

    iput-object p2, p0, Lejo;->e:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iput-object p3, p0, Lejo;->f:Lgeh;

    iput-object p4, p0, Lejo;->g:Leik;

    iput-object p5, p0, Lejo;->h:Ljew;

    return-void
.end method


# virtual methods
.method public f()V
    .locals 2

    iget-object v0, p0, Lejo;->d:Liff;

    sget-object v1, Lika;->d:Lika;

    invoke-interface {v0, v1}, Liff;->af(Lika;)V

    iget-object v0, p0, Lejo;->d:Liff;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Liff;->G(Z)V

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lejo;->d:Liff;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Liff;->G(Z)V

    return-void
.end method
