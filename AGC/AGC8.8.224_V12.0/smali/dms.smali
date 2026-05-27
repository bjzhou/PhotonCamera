.class public final Ldms;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public b:Lcom/google/android/apps/camera/debugui/DebugCanvasView;

.field public final c:Lkfg;

.field private final d:Ldhi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/debugui/DebugCanvasAdapter"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldms;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ldhi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldms;->d:Ldhi;

    sget-object v0, Ldho;->a:Ldhk;

    invoke-interface {p1}, Ldhi;->c()V

    invoke-interface {p1}, Ldhi;->c()V

    invoke-interface {p1}, Ldhi;->c()V

    invoke-interface {p1}, Ldhi;->c()V

    invoke-interface {p1}, Ldhi;->c()V

    new-instance p1, Ldmr;

    invoke-direct {p1, p0}, Ldmr;-><init>(Ldms;)V

    iput-object p1, p0, Ldms;->c:Lkfg;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/apps/camera/debugui/DebugCanvasView;)V
    .locals 1

    iput-object p1, p0, Ldms;->b:Lcom/google/android/apps/camera/debugui/DebugCanvasView;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/debugui/DebugCanvasView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Ldms;->d:Ldhi;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->c()V

    iget-object v0, p0, Ldms;->d:Ldhi;

    invoke-interface {v0}, Ldhi;->c()V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Ldms;->b:Lcom/google/android/apps/camera/debugui/DebugCanvasView;

    if-nez v0, :cond_0

    sget-object v0, Ldms;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "UI view not yet initialized"

    const/16 v2, 0x3f9

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/debugui/DebugCanvasView;->setVisibility(I)V

    return-void
.end method
