.class public final Lcho;
.super Lchp;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lchs;

.field private final c:Ljuh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/app/silentfeedback/UncaughtExceptionForwarder"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcho;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lchs;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    invoke-direct {p0, p2}, Lchp;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sget-object p2, Ljuh;->b:Ljuh;

    iput-object p2, p0, Lcho;->c:Ljuh;

    iput-object p1, p0, Lcho;->b:Lchs;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcho;->b:Lchs;

    if-eqz v0, :cond_1

    invoke-static {}, Ljuh;->d()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcho;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Uncaught exception in background thread"

    const/16 v2, 0xb7

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcho;->c:Ljuh;

    new-instance v1, Lcfz;

    const/4 v2, 0x7

    invoke-direct {v1, p0, p1, v2}, Lcfz;-><init>(Lcho;Ljava/lang/Throwable;I)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
