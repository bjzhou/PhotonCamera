.class final Lbei;
.super Ljava/lang/Object;


# static fields
.field static final a:Lbei;


# instance fields
.field volatile b:Ljava/lang/Thread;

.field volatile c:Lbei;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbei;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbei;-><init>([B)V

    sput-object v0, Lbei;->a:Lbei;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lbej;->b:Lbea;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lbea;->b(Lbei;Ljava/lang/Thread;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lbei;)V
    .locals 1

    sget-object v0, Lbej;->b:Lbea;

    invoke-virtual {v0, p0, p1}, Lbea;->a(Lbei;Lbei;)V

    return-void
.end method
