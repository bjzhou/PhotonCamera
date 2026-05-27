.class final Lbh;
.super Lbg;


# instance fields
.field public final c:Ljava/lang/Object;

.field public final d:Z

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ldl;Lexj;ZZ[B)V
    .locals 3

    const/4 p5, 0x0

    invoke-direct {p0, p1, p2, p5}, Lbg;-><init>(Ldl;Lexj;[B)V

    iget p2, p1, Ldl;->e:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p2, v0, :cond_8

    if-eqz p3, :cond_2

    iget-object p2, p1, Ldl;->a:Lbw;

    iget-object v0, p2, Lbw;->Q:Lbs;

    if-nez v0, :cond_0

    move-object v0, p5

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lbs;->l:Ljava/lang/Object;

    sget-object v2, Lbw;->e:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    invoke-virtual {p2}, Lbw;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    goto :goto_0

    :cond_2
    iget-object p2, p1, Ldl;->a:Lbw;

    invoke-virtual {p2}, Lbw;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lbh;->c:Ljava/lang/Object;

    if-eqz p3, :cond_5

    iget-object p2, p1, Ldl;->a:Lbw;

    iget-object p2, p2, Lbw;->Q:Lbs;

    if-eqz p2, :cond_4

    iget-object p2, p2, Lbs;->o:Ljava/lang/Boolean;

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2

    :cond_4
    :goto_1
    goto :goto_2

    :cond_5
    iget-object p2, p1, Ldl;->a:Lbw;

    iget-object p2, p2, Lbw;->Q:Lbs;

    if-eqz p2, :cond_7

    iget-object p2, p2, Lbs;->p:Ljava/lang/Boolean;

    if-nez p2, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2

    :cond_7
    :goto_2
    iput-boolean v1, p0, Lbh;->d:Z

    goto :goto_4

    :cond_8
    if-eqz p3, :cond_b

    iget-object p2, p1, Ldl;->a:Lbw;

    iget-object v0, p2, Lbw;->Q:Lbs;

    if-nez v0, :cond_9

    move-object v0, p5

    goto :goto_3

    :cond_9
    iget-object v0, v0, Lbs;->j:Ljava/lang/Object;

    sget-object v2, Lbw;->e:Ljava/lang/Object;

    if-ne v0, v2, :cond_a

    invoke-virtual {p2}, Lbw;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_a
    goto :goto_3

    :cond_b
    iget-object p2, p1, Ldl;->a:Lbw;

    invoke-virtual {p2}, Lbw;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lbh;->c:Ljava/lang/Object;

    iput-boolean v1, p0, Lbh;->d:Z

    :goto_4
    if-eqz p4, :cond_f

    if-eqz p3, :cond_e

    iget-object p1, p1, Ldl;->a:Lbw;

    iget-object p2, p1, Lbw;->Q:Lbs;

    if-nez p2, :cond_c

    goto :goto_5

    :cond_c
    iget-object p5, p2, Lbs;->n:Ljava/lang/Object;

    sget-object p2, Lbw;->e:Ljava/lang/Object;

    if-ne p5, p2, :cond_d

    invoke-virtual {p1}, Lbw;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p5

    goto :goto_5

    :cond_d
    :goto_5
    iput-object p5, p0, Lbh;->e:Ljava/lang/Object;

    return-void

    :cond_e
    iget-object p1, p1, Ldl;->a:Lbw;

    invoke-virtual {p1}, Lbw;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lbh;->e:Ljava/lang/Object;

    return-void

    :cond_f
    iput-object p5, p0, Lbh;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ldf;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget v0, Lcy;->c:I

    instance-of v0, p1, Landroid/transition/Transition;

    if-nez v0, :cond_2

    sget-object v0, Lcy;->b:Ldf;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ldf;->m(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcy;->b:Ldf;

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for fragment "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lbg;->a:Ldl;

    iget-object p1, p1, Ldl;->a:Lbw;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid framework Transition or AndroidX Transition"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object p1, Lcy;->a:Ldf;

    return-object p1
.end method
