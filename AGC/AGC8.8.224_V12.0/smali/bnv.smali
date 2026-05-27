.class public Lbnv;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lbnu;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbns;

    invoke-direct {v0}, Lbns;-><init>()V

    iput-object v0, p0, Lbnv;->a:Lbnu;

    iput-object p1, p0, Lbnv;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lbnu;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbnv;->b:Landroid/os/Handler;

    iput-object p1, p0, Lbnv;->a:Lbnu;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-object v0, p0, Lbnv;->b:Landroid/os/Handler;

    new-instance v1, Lbbh;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p1, v2}, Lbbh;-><init>(Lbnv;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Ljava/lang/RuntimeException;Ljava/lang/String;II)V
    .locals 8

    iget-object v0, p0, Lbnv;->b:Landroid/os/Handler;

    new-instance v7, Lbnt;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lbnt;-><init>(Lbnv;Ljava/lang/RuntimeException;Ljava/lang/String;II)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Ljava/lang/RuntimeException;)V
    .locals 3

    iget-object v0, p0, Lbnv;->b:Landroid/os/Handler;

    new-instance v1, Lbem;

    const/16 v2, 0xe

    invoke-direct {v1, p0, p1, v2}, Lbem;-><init>(Lbnv;Ljava/lang/RuntimeException;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
