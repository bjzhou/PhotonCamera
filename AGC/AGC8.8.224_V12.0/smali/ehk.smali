.class public final Lehk;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lgxi;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lva;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/image/conversion/YuvToBitmapNotifier"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lehk;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lva;Lgxi;Ljava/util/concurrent/Executor;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lehk;->d:Lva;

    iput-object p2, p0, Lehk;->b:Lgxi;

    iput-object p3, p0, Lehk;->c:Ljava/util/concurrent/Executor;

    return-void
.end method
