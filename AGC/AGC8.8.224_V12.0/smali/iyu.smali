.class public final Liyu;
.super Liyw;


# instance fields
.field public final a:Lizj;


# direct methods
.method public constructor <init>(Liyz;)V
    .locals 1

    invoke-direct {p0, p1}, Liyw;-><init>(Liyz;)V

    new-instance v0, Lizj;

    invoke-direct {v0, p1}, Lizj;-><init>(Liyz;)V

    iput-object v0, p0, Liyu;->a:Lizj;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    iget-object v0, p0, Liyu;->a:Lizj;

    invoke-virtual {v0}, Liyw;->A()V

    return-void
.end method

.method public final b(Lizp;)V
    .locals 3

    invoke-virtual {p0}, Liyw;->z()V

    invoke-virtual {p0}, Liyv;->e()Liys;

    move-result-object v0

    new-instance v1, Lioi;

    const/16 v2, 0xa

    invoke-direct {v1, p0, p1, v2}, Lioi;-><init>(Liyu;Lizp;I)V

    invoke-virtual {v0, v1}, Liys;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method final c()V
    .locals 3

    invoke-static {}, Liys;->a()V

    iget-object v0, p0, Liyu;->a:Lizj;

    invoke-static {}, Liys;->a()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lizj;->e:J

    return-void
.end method
