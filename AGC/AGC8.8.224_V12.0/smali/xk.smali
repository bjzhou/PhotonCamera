.class final Lxk;
.super Ljava/lang/Object;


# static fields
.field static final a:Lxk;

.field static final b:Lxk;


# instance fields
.field final c:Z

.field final d:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lxt;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Lxk;->b:Lxk;

    sput-object v1, Lxk;->a:Lxk;

    return-void

    :cond_0
    new-instance v0, Lxk;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lxk;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lxk;->b:Lxk;

    new-instance v0, Lxk;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lxk;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lxk;->a:Lxk;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lxk;->c:Z

    iput-object p2, p0, Lxk;->d:Ljava/lang/Throwable;

    return-void
.end method
