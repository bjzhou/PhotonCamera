.class public final Lopd;
.super Lorc;


# instance fields
.field public final a:Lopa;


# direct methods
.method public constructor <init>(Lopa;)V
    .locals 0

    invoke-direct {p0}, Lorc;-><init>()V

    iput-object p1, p0, Lopd;->a:Lopa;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lopd;->b(Ljava/lang/Throwable;)V

    sget-object p1, Lojk;->a:Lojk;

    return-object p1
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 6

    iget-object p1, p0, Lopd;->a:Lopa;

    invoke-virtual {p0}, Lore;->e()Lori;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lora;->o()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    invoke-virtual {p1}, Lopa;->y()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lopa;->a:Loku;

    check-cast v1, Lowh;

    iget-object v2, v1, Lowh;->e:Loop;

    :cond_1
    iget-object v3, v2, Loop;->a:Ljava/lang/Object;

    sget-object v4, Lowi;->b:Loxb;

    invoke-static {v3, v4}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, v1, Lowh;->e:Loop;

    sget-object v4, Lowi;->b:Loxb;

    invoke-virtual {v3, v4, v0}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_2
    instance-of v4, v3, Ljava/lang/Throwable;

    if-nez v4, :cond_3

    iget-object v4, v1, Lowh;->e:Loop;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {p1, v0}, Lopa;->k(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lopa;->w()V

    return-void

    :cond_3
    :goto_1
    return-void
.end method
