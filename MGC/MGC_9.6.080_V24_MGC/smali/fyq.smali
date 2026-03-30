.class public final Lfyq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfxw;


# instance fields
.field public final a:Loyn;

.field public final b:Loyn;

.field public final c:Lhoh;

.field public final d:Lmhz;

.field private final e:Loyd;


# direct methods
.method public constructor <init>(Lmhz;Lhoh;Llyv;)V
    .locals 0

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1, p3}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lfyq;->c:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lfyq;->b:Loyn;

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

    :goto_3
    iput-object p1, p0, Lfyq;->a:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lfyq;->d:Lmhz;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    new-instance p1, Loxv;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p1, Loxv;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object p1, Llyr;->u:Llze;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lfyq;->e:Loyd;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    const/4 p2, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    invoke-direct {p1, p2}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    invoke-virtual {p3, p1}, Llyv;->a(Llyp;)Loyn;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public static e(Lpnx;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    const-string p1, "%s-%s"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

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
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lpnx;->a:Ljava/lang/String;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz p1, :cond_0

    nop

    goto/32 :goto_4

    nop

    :cond_0
    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_7

    nop

    nop

    :goto_b
    const-string v0, "pref_camera_dirty_lens_history_key"

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Loyd;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    new-array v0, v0, [Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lfyq;->e:Loyd;

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

    nop

    :goto_5
    goto/32 :goto_3

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    aput-object p0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0}, Loyi;->c([Loyd;)Loyd;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final b()Loyn;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfyq;->a:Loyn;

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final c()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop
.end method

.method public final d(Lpnx;)Lfyp;
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, v0}, Lfyq;->e(Lpnx;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2

    nop

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

    :cond_0
    goto/32 :goto_7

    nop

    :goto_2
    iget-object v0, p0, Lfyq;->d:Lmhz;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-direct {v1, p1, v0, p0}, Lfyp;-><init>(Ljava/lang/String;Loyn;Lhoh;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object v1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, p1, v2}, Lmhz;->e(Ljava/lang/String;Ljava/lang/String;)Loyn;

    move-result-object v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v1, Lfyp;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x1b

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_10
    const-string v2, ""

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    iget-object p0, p0, Lfyq;->c:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method
