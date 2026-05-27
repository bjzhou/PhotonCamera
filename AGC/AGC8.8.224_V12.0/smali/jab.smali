.class public final Ljab;
.super Ljava/lang/Object;

# interfaces
.implements Lizp;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Ligo;


# direct methods
.method public constructor <init>(Ligo;Ljava/lang/Runnable;[B[B[B[B)V
    .locals 0

    iput-object p1, p0, Ljab;->b:Ligo;

    iput-object p2, p0, Ljab;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Ljab;->b:Ligo;

    iget-object v0, v0, Ligo;->a:Ljava/lang/Object;

    iget-object v1, p0, Ljab;->a:Ljava/lang/Runnable;

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
