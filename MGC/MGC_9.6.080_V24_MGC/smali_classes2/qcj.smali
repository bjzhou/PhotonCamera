.class public final synthetic Lqcj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lssw;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lpwl;

.field public final synthetic d:Lpwn;

.field public final synthetic e:Lhdn;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lhdn;Lpwl;Lpwn;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lqcj;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lqcj;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p4, p0, Lqcj;->c:Lpwl;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p5, p0, Lqcj;->d:Lpwn;

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
    iput-object p3, p0, Lqcj;->e:Lhdn;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method


# virtual methods
.method public final a()Lsui;
    .locals 8

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget p0, Lqbq;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_40

    nop

    :goto_2
    iget-object p0, p0, Lqcj;->d:Lpwn;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4
    iget-object v3, p0, Lqcj;->b:Ljava/lang/String;

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_5
    iget-object v2, p0, Lpwn;->d:Ljava/lang/String;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1}, Lraa;->getMessage()Ljava/lang/String;

    move-result-object v0

    nop

    :goto_7
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_a
    move p0, v7

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    goto/16 :goto_3c

    nop

    :catch_0
    move-exception v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_3c

    nop

    nop

    :catch_1
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v5, p0, Lqcj;->c:Lpwl;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, v6, v0}, Lqck;-><init>(ILjava/lang/String;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lpwn;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1}, Lraa;->getMessage()Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    const-string v0, ""

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_14
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

    :goto_15
    iget-object v0, v5, Lpwl;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz v6, :cond_1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string v1, "%s: Malformed lease uri file %s, file group %s"

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_19
    const-string v1, "%s: Failed to check existence in the shared storage for file %s, file group %s"

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1a
    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move v7, v6

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lpwn;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1d
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1e
    throw p0

    nop

    nop

    :goto_1f
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/16 p0, 0x18

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    move v6, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_22
    iget-object v2, p0, Lqcj;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_23
    iget-object v0, v5, Lpwl;->c:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_24
    iget-object v4, p0, Lqcj;->e:Lhdn;

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

    nop

    :goto_25
    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v2, p0, Lpwn;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    nop

    :catch_2
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, v5, Lpwl;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_29
    iget-object p0, p0, Lpwn;->d:Ljava/lang/String;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_41

    nop

    nop

    :goto_2b
    return-object p0

    nop

    nop

    :goto_2c
    goto/32 :goto_30

    nop

    nop

    :goto_2d
    const-string v1, "AndroidSharingUtil"

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const v0, 0xf

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v1, v0}, Lqbq;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_30
    new-instance p0, Lqck;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v1, v0}, Lqbq;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_33
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {v2, v3}, Lpuq;->D(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v4, v2}, Lhdn;->I(Landroid/net/Uri;)Z

    move-result p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Lraa; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lqzy; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const-string v0, "Malformed blob Uri for file %s, group %s"

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const-string v0, "Error while checking if file %s, group %s, exists in the shared blob storage."

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_37
    const/16 p0, 0x13

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v2, :cond_2

    nop

    goto/32 :goto_3e

    nop

    :cond_2
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v0, v5, Lpwl;->c:Ljava/lang/String;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3b
    goto :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_7

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3f
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_1f

    nop

    :goto_41
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const-string p0, "UnsupportedFileStorageOperation was thrown: "

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_43
    const/16 p0, 0x11

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_45
    iget-object v1, v5, Lpwl;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop
.end method
