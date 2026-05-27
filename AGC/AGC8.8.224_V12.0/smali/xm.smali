.class final Lxm;
.super Ljava/lang/Object;


# static fields
.field static final a:Lxm;


# instance fields
.field final b:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lxm;

    new-instance v1, Lxl;

    invoke-direct {v1}, Lxl;-><init>()V

    invoke-direct {v0, v1}, Lxm;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lxm;->a:Lxm;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lxt;->g(Ljava/lang/Object;)V

    iput-object p1, p0, Lxm;->b:Ljava/lang/Throwable;

    return-void
.end method
