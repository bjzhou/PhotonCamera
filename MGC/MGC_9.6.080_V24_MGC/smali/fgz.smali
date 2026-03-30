.class public abstract Lfgz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final i:Lfht;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    new-instance v0, Lfht;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    invoke-direct {v0, v1}, Lfht;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x10

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    const-string v1, "CamAgnt"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    sput-object v0, Lfgz;->i:Lfht;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method


# virtual methods
.method public abstract a()Landroid/os/Handler;
.end method

.method public abstract b()Lfhi;
.end method

.method public abstract c()Lfhm;
.end method

.method protected abstract d()Lfho;
.end method

.method public abstract e()Lfhp;
.end method

.method public abstract f(Lfhm;)V
.end method

.method public final g(Z)V
    .locals 4

    goto/32 :goto_2

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_2
    const v0, 0x10

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    const v1, 0xf

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Lfhm;->c(Ljava/lang/RuntimeException;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lfgz;->c()Lfhm;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    if-nez p1, :cond_1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lfgz;->d()Lfho;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lfho;->d()Z

    move-result p1

    nop

    if-eqz p1, :cond_2

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_2
    new-instance p1, Lfgy;

    nop

    nop

    nop

    nop

    invoke-direct {p1}, Lfgy;-><init>()V

    invoke-virtual {p0}, Lfgz;->e()Lfhp;

    move-result-object v1

    nop

    nop

    new-instance v2, Less;

    nop

    nop

    nop

    const/16 v3, 0xa

    nop

    invoke-direct {v2, p0, p1, v3, v0}, Less;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[S)V

    iget-object p1, p1, Lfgy;->b:Ljava/lang/Object;

    nop

    const-string v0, "camera release"

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2, p1, v0}, Lfhp;->b(Ljava/lang/Runnable;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lfgz;->e()Lfhp;

    move-result-object p1

    nop

    nop

    nop

    new-instance v1, Lesy;

    nop

    const/4 v2, 0x5

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, v2, v0}, Lesy;-><init>(Ljava/lang/Object;I[B)V

    invoke-virtual {p1, v1}, Lfhp;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method
