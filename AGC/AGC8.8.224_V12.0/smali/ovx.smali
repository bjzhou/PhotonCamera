.class public final Lovx;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lork;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Losf;->a:I

    new-instance v1, Losd;

    const-string v2, "main"

    invoke-direct {v1, v0, v2}, Losd;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    sput-object v1, Lovx;->a:Lork;

    return-void
.end method
