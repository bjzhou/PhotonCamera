.class final Lxs;
.super Ljava/lang/Object;


# static fields
.field static final a:Lxs;


# instance fields
.field volatile next:Lxs;

.field volatile thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lxs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lxs;-><init>([B)V

    sput-object v0, Lxs;->a:Lxs;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lxt;->b:Lxj;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lxj;->b(Lxs;Ljava/lang/Thread;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lxs;)V
    .locals 1

    sget-object v0, Lxt;->b:Lxj;

    invoke-virtual {v0, p0, p1}, Lxj;->a(Lxs;Lxs;)V

    return-void
.end method
