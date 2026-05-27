.class public abstract Lchp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final c:Ljuh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/app/silentfeedback/UncaughtExceptionHandlerBase"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lchp;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljuh;->b:Ljuh;

    iput-object v0, p0, Lchp;->c:Ljuh;

    iput-object p1, p0, Lchp;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Throwable;)V
.end method

.method public final b(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lchp;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    invoke-virtual {p0, p2}, Lchp;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Ljuh;->d()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lchp;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Uncaught exception in background thread %s"

    const/16 v2, 0xb8

    invoke-static {v0, v1, p1, v2, p2}, Ld;->i(Lnaz;Ljava/lang/String;Ljava/lang/Object;CLjava/lang/Throwable;)V

    iget-object v0, p0, Lchp;->c:Ljuh;

    new-instance v1, Lblx;

    const/4 v2, 0x7

    invoke-direct {v1, p0, p1, p2, v2}, Lblx;-><init>(Lchp;Ljava/lang/Thread;Ljava/lang/Throwable;I)V

    invoke-virtual {v0, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lchp;->b(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
