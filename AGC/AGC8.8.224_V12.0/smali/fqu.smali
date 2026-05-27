.class public final Lfqu;
.super Ljava/lang/Object;

# interfaces
.implements Lfss;


# instance fields
.field final synthetic a:Lfqy;

.field public final synthetic b:Lfrc;


# direct methods
.method public constructor <init>(Lfrc;Lfqy;)V
    .locals 0

    iput-object p1, p0, Lfqu;->b:Lfrc;

    iput-object p2, p0, Lfqu;->a:Lfqy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lfqu;->b:Lfrc;

    iget-object v0, v0, Lfrc;->h:Landroid/os/Handler;

    iget-object v1, p0, Lfqu;->a:Lfqy;

    new-instance v2, Lfqt;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v1, v3}, Lfqt;-><init>(Lfqu;Lfqy;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(J)V
    .locals 8

    iget-object v0, p0, Lfqu;->b:Lfrc;

    iget-object v0, v0, Lfrc;->h:Landroid/os/Handler;

    iget-object v5, p0, Lfqu;->a:Lfqy;

    new-instance v7, Ldcf;

    const/16 v6, 0xb

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    invoke-direct/range {v1 .. v6}, Ldcf;-><init>(Lfqu;JLfqy;I)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
