.class public final Lfqw;
.super Ljava/lang/Object;

# interfaces
.implements Lfsl;


# instance fields
.field final synthetic a:Lfra;

.field public final synthetic b:Lfrc;


# direct methods
.method public constructor <init>(Lfrc;Lfra;)V
    .locals 0

    iput-object p1, p0, Lfqw;->b:Lfrc;

    iput-object p2, p0, Lfqw;->a:Lfra;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lfqw;->b:Lfrc;

    iget-object v0, v0, Lfrc;->h:Landroid/os/Handler;

    iget-object v1, p0, Lfqw;->a:Lfra;

    new-instance v2, Lfqt;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v1, v3}, Lfqt;-><init>(Lfqw;Lfra;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 3

    iget-object p1, p0, Lfqw;->b:Lfrc;

    iget-object p1, p1, Lfrc;->h:Landroid/os/Handler;

    iget-object v0, p0, Lfqw;->a:Lfra;

    new-instance v1, Lfqt;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v0, v2}, Lfqt;-><init>(Lfqw;Lfra;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Lkpb;)V
    .locals 4

    iget-object v0, p0, Lfqw;->b:Lfrc;

    iget-object v0, v0, Lfrc;->h:Landroid/os/Handler;

    iget-object v1, p0, Lfqw;->a:Lfra;

    new-instance v2, Leow;

    const/16 v3, 0xf

    invoke-direct {v2, p0, v1, p1, v3}, Leow;-><init>(Lfqw;Lfra;Lkpb;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
