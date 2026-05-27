.class public final Leup;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ljava/lang/ref/WeakReference;

.field public final c:Ljuh;

.field public final d:Lmqp;

.field public final e:Lcgx;

.field public final f:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/legacy/app/module/pckimageintent/ImageIntentResultHandler"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Leup;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljuh;Lbkc;Lcgy;Ljava/util/concurrent/Executor;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leup;->b:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Leup;->c:Ljuh;

    iput-object p4, p0, Leup;->e:Lcgx;

    iput-object p5, p0, Leup;->f:Ljava/util/concurrent/Executor;

    invoke-virtual {p3}, Lbkc;->e()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcdg;->e(Landroid/content/Intent;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Leup;->d:Lmqp;

    return-void
.end method
