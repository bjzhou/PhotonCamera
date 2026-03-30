.class public final Lesn;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Leqg;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lnkn;


# direct methods
.method public constructor <init>(Leqg;ZLjava/lang/String;Lnkn;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p4, p0, Lesn;->d:Lnkn;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lesn;->a:Leqg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean p2, p0, Lesn;->b:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p3, p0, Lesn;->c:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, Lesg;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    check-cast p0, Levq;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lesn;->a:Leqg;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lesn;->d:Lnkn;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_5

    nop

    nop

    :catchall_0
    :try_start_0
    invoke-static {p1, p0}, Landroid/os/Trace;->endSection(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catchall_1
    :goto_5
    goto/32 :goto_11

    nop

    nop

    :goto_6
    iget-object p0, p0, Lnkn;->h:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Lesn;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p1}, Leqg;->e(I)V

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Levq;->hashCode()I

    move-result p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1}, Ldwa;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    :try_start_1
    invoke-static {p1, p0}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean p1, p0, Lesn;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_e
    check-cast p1, Ljava/lang/Throwable;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    instance-of v0, p1, Lesg;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    iget p1, p1, Lesg;->a:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    :goto_13
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method
