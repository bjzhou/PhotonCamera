.class public final Ljow;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljov;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljov;-><init>(I)V

    sput-object v0, Ljow;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lcan;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcan;-><init>(I)V

    sput-object v0, Ljow;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
