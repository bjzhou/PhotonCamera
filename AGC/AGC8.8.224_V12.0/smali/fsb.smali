.class public final Lfsb;
.super Ljava/lang/Object;

# interfaces
.implements Lfsm;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Landroid/os/Handler;

.field private final c:Lfsm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/moments/TimeLimitedMomentsHdrPlusLauncher"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfsb;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lfsm;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfsb;->c:Lfsm;

    iput-object p2, p0, Lfsb;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lfsb;->c:Lfsm;

    invoke-interface {v0}, Lfsm;->a()I

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Lkeb;Lgue;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final c(Lkeb;Lfte;Lnom;Lfsl;)V
    .locals 6

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v2, p0, Lfsb;->b:Landroid/os/Handler;

    new-instance v3, Lfqt;

    const/4 v4, 0x6

    invoke-direct {v3, v0, p4, v4}, Lfqt;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lfsl;I)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    iget-object v2, p0, Lfsb;->c:Lfsm;

    new-instance v3, Lfsa;

    invoke-direct {v3, p0, v1, v0, p4}, Lfsa;-><init>(Lfsb;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Lfsl;)V

    invoke-interface {v2, p1, p2, p3, v3}, Lfsm;->c(Lkeb;Lfte;Lnom;Lfsl;)V

    return-void
.end method
