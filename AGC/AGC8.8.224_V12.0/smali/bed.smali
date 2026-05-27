.class final Lbed;
.super Ljava/lang/Object;


# static fields
.field static final a:Lbed;


# instance fields
.field final b:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbed;

    new-instance v1, Lbec;

    invoke-direct {v1}, Lbec;-><init>()V

    invoke-direct {v0, v1}, Lbed;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lbed;->a:Lbed;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lbej;->c(Ljava/lang/Object;)V

    iput-object p1, p0, Lbed;->b:Ljava/lang/Throwable;

    return-void
.end method
