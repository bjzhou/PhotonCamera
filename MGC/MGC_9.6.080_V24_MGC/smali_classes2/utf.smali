.class public final synthetic Lutf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lutl;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Lutf;->b:I

    nop

    goto/32 :goto_2

    nop

    nop

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
    iput-object p1, p0, Lutf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 13

    goto/32 :goto_cc

    nop

    nop

    :goto_0
    iget-object p0, p0, Lutf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_1
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, v0, Lutk;->e:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_6
    new-instance v1, Locu;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    iget-object v4, v0, Lutk;->m:Ljava/net/HttpURLConnection;

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, v0, Lutk;->m:Ljava/net/HttpURLConnection;

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_b
    iget v0, p0, Lutf;->b:I

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    :goto_d
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p0, Luti;

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v4, v0, Lutk;->j:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v5}, Luso;->a()Ljava/util/Map;

    move-result-object v2

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v2, Lqtz;

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_12
    check-cast v1, Ljava/net/HttpURLConnection;

    nop

    goto/32 :goto_cd

    nop

    nop

    :goto_13
    return-void

    nop

    :goto_14
    goto/32 :goto_22

    nop

    nop

    :goto_15
    goto/16 :goto_ce

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lutf;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_18
    check-cast v4, Landroid/net/ConnectivityManager;

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v8, p0, Lutk;->m:Ljava/net/HttpURLConnection;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1a
    move-object v6, v12

    nop

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

    :goto_1b
    goto/16 :goto_d

    nop

    :goto_1c
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v8, v5}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v1, p0, v3}, Lutf;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v2, Ljava/net/URL;

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

    :goto_21
    iget-object v0, v0, Lutk;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v0, Loca;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, v4, v0, v1}, Lutk;->h(IILjava/lang/Runnable;)V

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Luti;->c()V

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_25
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_5a

    nop

    :goto_27
    goto/32 :goto_d4

    nop

    nop

    :goto_28
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v9

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    :goto_29
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v7, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    :cond_1
    goto/32 :goto_dd

    nop

    nop

    :goto_2b
    invoke-static {v0}, Lutb;->a(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    array-length v5, v4

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_2d
    if-lt v5, v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_2e
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :goto_2f
    iput v1, v0, Lutk;->i:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_30
    check-cast v0, Lutk;

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const-string v5, "http/1.1"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-ge v5, v2, :cond_3

    nop

    nop

    goto/32 :goto_b7

    nop

    :cond_3
    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :goto_33
    const/16 v1, 0xd

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_34
    move v8, v5

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v6, p0, Lutk;->m:Ljava/net/HttpURLConnection;

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_36
    invoke-static {p0, v2, v3}, Locs;->a(ILjava/util/Map;Ljava/lang/String;)Locs;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v4, v0, Lutk;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object p0, p0, Lutf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_39
    iget-object v4, v0, Lutk;->n:Lutc;

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const-string v2, "User-Agent"

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v4, v0, Lutk;->m:Ljava/net/HttpURLConnection;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object p0, p0, Lutk;->b:Luti;

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_ae

    nop

    nop

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_41
    const-wide/16 v6, -0x1

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_42
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_44
    new-instance v7, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-ne v0, v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    :goto_46
    iget-object v6, v0, Loca;->b:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_47
    new-instance v1, Lqxm;

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    check-cast v2, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/32 :goto_79

    nop

    nop

    :goto_4a
    cmp-long v8, v8, v10

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_4b
    iget p0, v5, Luso;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    add-int v0, v0, v1

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v0, v1}, Lsuu;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_62

    nop

    nop

    :goto_4f
    iget-object v1, v0, Lutk;->m:Ljava/net/HttpURLConnection;

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-ge p0, v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_d5

    nop

    nop

    :goto_51
    if-nez v1, :cond_6

    nop

    goto/32 :goto_16

    nop

    :cond_6
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v4, v5, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-nez v4, :cond_7

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_49

    nop

    nop

    :goto_54
    iget-object v6, p0, Lutk;->f:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-static {v0}, Lutb;->a(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    if-eqz v1, :cond_8

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-direct/range {v3 .. v8}, Locb;-><init>(Lusm;Luso;Lsuu;Loca;Ljava/lang/String;)V

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v0, v0, Lutr;->a:Lrrf;

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_5c
    iget-object v1, v0, Lutk;->e:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-direct {p0}, Lutn;-><init>()V

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-direct/range {v6 .. v11}, Luso;-><init>(Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_60
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v4}, Lusm;->a()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-direct {v1, p0, v0, v12, v2}, Lqxm;-><init>(Lutk;Ljava/lang/String;Luso;I)V

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_64
    goto/16 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_66
    const v1, 0xf

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_67
    const-string v7, "X-Android"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_68
    iget-object v0, v0, Lutk;->c:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :goto_69
    const-string v8, ""

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_6a
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_6b
    check-cast v0, Ljava/lang/String;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    const-string v5, "connectivity"

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_6d
    const/4 v0, 0x2

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_6e
    const/16 v3, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_6f
    iget-object v4, v4, Lutc;->f:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-direct {v1, p0}, Locu;-><init>(Locs;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_71
    iput-object v1, p0, Lutk;->k:Ljava/nio/channels/ReadableByteChannel;

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v12}, Luso;->a()Ljava/util/Map;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    move v6, v3

    nop

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_85

    nop

    nop

    :goto_75
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {p0, v0}, Lsuu;->e(Ljava/lang/Object;)Z

    :goto_77
    goto/32 :goto_96

    nop

    nop

    :goto_78
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_79
    iput-object v1, v0, Lutk;->m:Ljava/net/HttpURLConnection;

    nop

    nop

    nop

    :goto_7a
    goto/32 :goto_7f

    nop

    nop

    :goto_7b
    if-eqz v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    :cond_9
    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_7c
    iput-object v1, v0, Lutk;->m:Ljava/net/HttpURLConnection;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-direct {v7, v6, v8}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_8d

    nop

    nop

    :goto_7e
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_7f
    iget-wide v4, v0, Lutk;->q:J

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_80
    iget-object v6, p0, Lutk;->m:Ljava/net/HttpURLConnection;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    cmp-long v4, v4, v6

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_82
    iput-object v12, p0, Lutk;->u:Luso;

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_83
    invoke-direct {v2, p0, v1, v3}, Lqtz;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_85
    if-lt v6, v5, :cond_a

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_87
    iput-object v0, p0, Lutk;->k:Ljava/nio/channels/ReadableByteChannel;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_88
    iget-object v1, v0, Lutk;->e:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    return-void

    nop

    nop

    nop

    nop

    :goto_8a
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    new-instance p0, Lutn;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8e
    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    if-eqz v8, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_90
    invoke-virtual {v1, v2}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v1

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto/32 :goto_e4

    nop

    nop

    :goto_92
    check-cast p0, Lutk;

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_93
    iput-object p0, v0, Loca;->d:Locb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {v7}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v4

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    return-void

    nop

    nop

    nop

    nop

    :goto_97
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_98
    iget-object v3, v5, Luso;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_99
    if-nez v4, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_9a
    move-object v1, v7

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_9c
    if-eqz v7, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_df

    nop

    nop

    :goto_9d
    if-ge v5, v0, :cond_e

    nop

    goto/32 :goto_9f

    nop

    :cond_e
    goto/32 :goto_2d

    nop

    nop

    :goto_9e
    return-void

    nop

    :goto_9f
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_a1
    move-object v11, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_a2
    invoke-virtual {v6, v5}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    :goto_a3
    iget-object v0, p0, Lutk;->m:Ljava/net/HttpURLConnection;

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_a4
    const/16 v2, 0x190

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_a6
    iget-object v5, p0, Lutk;->m:Ljava/net/HttpURLConnection;

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_a7
    iget-object v5, v4, Lutk;->u:Luso;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_a8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    move-object v3, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_aa
    move-object v7, v0

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    iget-object v2, v0, Lutk;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_ac
    iput v1, v0, Lutk;->i:I

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    check-cast v1, Ljava/net/HttpURLConnection;

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    return-void

    nop

    nop

    nop

    nop

    :goto_af
    goto/32 :goto_38

    nop

    nop

    :goto_b0
    iget-object v0, p0, Luti;->a:Lutr;

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    check-cast v5, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_b2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    iget-object v0, p0, Luti;->d:Lutk;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_b5
    new-instance v12, Luso;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_b6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    goto/32 :goto_a3

    nop

    nop

    :goto_b8
    iget-object v0, v0, Loca;->a:Lsuu;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    check-cast v0, Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_ba
    const-string v7, "X-Android-Selected-Transport"

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    aget-object v7, v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_bc
    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_80

    nop

    nop

    :goto_bd
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_be
    if-eqz v0, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_64

    nop

    nop

    :goto_bf
    const-string v6, "location"

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    goto :goto_c3

    nop

    nop

    nop

    :goto_c1
    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_c2
    move v5, v3

    nop

    :goto_c3
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    new-instance p0, Locb;

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_c5
    const/4 v2, 0x6

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    goto/32 :goto_8a

    nop

    nop

    :goto_c7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    iget-object v0, v0, Loca;->d:Locb;

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    move-object v11, v7

    nop

    :goto_ca
    goto/32 :goto_67

    nop

    nop

    :goto_cb
    iget-object p0, v0, Loca;->a:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    const v0, 0x11

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_cd
    iput-object v1, v0, Lutk;->m:Ljava/net/HttpURLConnection;

    nop

    nop

    :goto_ce
    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    iget-object v0, p0, Lutk;->m:Ljava/net/HttpURLConnection;

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    invoke-virtual {p0}, Luti;->c()V

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_d1
    if-nez v6, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    :cond_10
    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_d2
    iget-object v2, v0, Lutk;->h:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_d3
    if-eqz v0, :cond_11

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :cond_11
    goto/32 :goto_b2

    nop

    nop

    :goto_d4
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    check-cast v0, Loca;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_d6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_d7
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_d8
    invoke-virtual {v7, v5}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    :goto_d9
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    if-lez v0, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    :cond_12
    goto/32 :goto_c6

    nop

    :goto_db
    iget-object v1, v0, Lutk;->m:Ljava/net/HttpURLConnection;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_dd
    iget-object v7, p0, Lutk;->m:Ljava/net/HttpURLConnection;

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_de
    const/16 v0, 0x12c

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_df
    new-instance v7, Ljava/util/AbstractMap$SimpleEntry;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_e0
    iget-object v4, p0, Luti;->d:Lutk;

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_e1
    if-nez v0, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    :cond_13
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    throw p0

    nop

    nop

    nop

    nop

    :goto_e3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e4
    const/16 v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    if-eq v2, v4, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_14
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    const-wide/16 v10, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    goto/16 :goto_56

    nop

    :goto_e8
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_e9
    const/16 v4, 0x8

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    :goto_ea
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_eb
    if-nez v0, :cond_15

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_b0

    nop

    nop

    :goto_ec
    iget-object p0, p0, Lutk;->b:Luti;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_ed
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_ee
    iget-object v0, p0, Lutk;->m:Ljava/net/HttpURLConnection;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_ef
    new-instance v1, Lutf;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop
.end method
