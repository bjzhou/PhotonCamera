.class public final synthetic Lgiw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p3, p0, Lgiw;->c:I

    nop

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

    :goto_2
    iput-object p2, p0, Lgiw;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lgiw;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lgiw;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lgiw;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lgiw;->c:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Landroid/view/View;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lgiw;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iput p3, p0, Lgiw;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lgiw;->a:Ljava/lang/Object;

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
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, v4, Lnpj;->b:F

    nop

    :goto_1
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    goto/32 :goto_9e

    nop

    nop

    :cond_0
    goto/32 :goto_99

    nop

    nop

    nop

    :goto_5
    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lgiw;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Lsui;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lgiw;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_9
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_8
    .end packed-switch

    :goto_c
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    :goto_11
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0, v1}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lqxz;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_14
    if-nez p0, :cond_1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lgiw;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lgiw;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_19
    invoke-direct {v0, v3}, Lsai;-><init>([C)V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    long-to-float v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-object p0

    nop

    nop

    :pswitch_0
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Lgiw;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {v1, v2}, Lhdy;-><init>(Lhee;)V

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_22
    if-nez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :cond_2
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v3}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_24
    if-gez v5, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    :cond_3
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    check-cast v0, Lmsy;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_27
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_28
    const-string v4, "Failed to update snapshot for %s flags may be stale."

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v0, p0, v1}, Lezg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lezs;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v1, p0, Lhot;->d:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_a5

    nop

    nop

    :goto_2d
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2e
    move-object v3, v4

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_30
    iget-object v1, p0, Lqxz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_31
    iget-object p0, p0, Lgiw;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_32
    return-object p0

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_33
    check-cast v2, Lhee;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const-string v1, "PhotoModeStartup"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const v0, 0x1f

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object p0, p0, Lgiw;->a:Ljava/lang/Object;

    nop

    nop

    :try_start_0
    move-object v5, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Lqxz;

    nop

    nop

    iget-object v5, v5, Lqxz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Lqvl;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lqvl;->e()Lhdn;

    move-result-object v5

    nop

    nop

    nop

    move-object v6, p0

    nop

    nop

    nop

    nop

    check-cast v6, Lqxz;

    nop

    nop

    nop

    nop

    iget-object v6, v6, Lqxz;->c:Ljava/lang/Object;

    nop

    new-instance v7, Lrav;

    nop

    nop

    invoke-direct {v7, v4}, Lrav;-><init>(Ltlq;)V

    new-array v2, v2, [Lsai;

    nop

    nop

    nop

    aput-object v0, v2, v1

    nop

    nop

    nop

    nop

    iput-object v2, v7, Lrav;->a:[Lsai;

    nop

    nop

    nop

    check-cast v6, Landroid/net/Uri;

    nop

    nop

    invoke-virtual {v5, v6, v7}, Lhdn;->D(Landroid/net/Uri;Lqzo;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Ljava/lang/Void;

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_72

    nop

    nop

    :goto_37
    check-cast p0, Ltlk;

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_38
    check-cast p0, Lqxz;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_39
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_3a
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object p0, p0, Lgiw;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_3c
    return-object v3

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_3e
    return-object v1

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    return-object p0

    nop

    nop

    :pswitch_4
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iput v0, v4, Lnpj;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_41
    invoke-direct {v4}, Lnpj;-><init>()V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v4, v0}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_43
    new-instance v1, Lhdy;

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {v0, p0, v3}, Lezg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lezs;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_3f

    nop

    nop

    :goto_46
    return-object p0

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_48
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_49
    if-lez v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_4a
    check-cast p0, Lmtb;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {v2, v1, v0, v4, p0}, Lqrf;->c(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4c
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_4d
    throw p0

    nop

    nop

    :pswitch_6
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v0, p0, Lgiw;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_4f
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_50
    iget-object p0, p0, Lgiw;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_51
    iget-object v0, p0, Lgiw;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v0, p0, Lgiw;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_53
    const-string v0, "status"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {p0, v4}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget-object v0, v0, Lmsy;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_56
    iget-object p0, p0, Lgiw;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_57
    if-lez v0, :cond_5

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    :goto_58
    iget-object v1, v0, Lmsy;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_59
    invoke-interface {p0}, Lmiu;->run()V

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object p0, p0, Lgiw;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object p0, p0, Lnpi;->c:Landroid/app/DownloadManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_5c
    return-object p0

    nop

    :pswitch_7
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object p0, p0, Lhot;->r:Lgvg;

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_5e
    iput-object v0, v4, Lnpj;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object v0, p0, Lgiw;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_60
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_61
    new-instance v0, Lsai;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_62
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_71

    nop

    nop

    nop

    :goto_63
    iget-object p0, p0, Lgiw;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_64
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_5a

    nop

    nop

    :goto_66
    cmp-long v5, v0, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_67
    iget-object v4, p0, Lgiw;->b:Ljava/lang/Object;

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

    :goto_68
    new-instance v4, Lnpj;

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

    :goto_69
    cmp-long v7, v2, v5

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_6b
    check-cast p0, Lnar;

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_6c
    check-cast p0, Lnpi;

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    const-string v0, "local_uri"

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_6e
    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    check-cast p0, Lmiu;

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_70
    return-object p0

    nop

    :pswitch_8
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_72
    goto/16 :goto_4c

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_73
    check-cast p0, Lhot;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {p0, v0}, Lnpi;->a(Landroid/net/Uri;)Ljava/lang/Long;

    move-result-object v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    div-float/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_76
    return-object p0

    nop

    :pswitch_9
    goto/32 :goto_4e

    nop

    nop

    :goto_77
    check-cast p0, Ltlk;

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_79
    iget-object p0, p0, Ltlk;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_7a
    const-string v1, "run"

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    const/4 v3, 0x0

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_7c

    nop

    nop

    :goto_7c
    iget-object v0, p0, Lgiw;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    move-object p0, v3

    nop

    nop

    :goto_7e
    goto/32 :goto_14

    nop

    nop

    :goto_7f
    invoke-static {p0}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_80
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_81
    check-cast v0, Ljava/lang/reflect/Method;

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iget-object p0, p0, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_85
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v1}, Lqvl;->b()Lsul;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_87
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    sget v0, Lgix;->a:I

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_89
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    long-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_8c
    new-array v0, v2, [J

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    const-wide/16 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_8e
    check-cast v1, Lqvl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_8f
    const-string v1, "get"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_90
    new-instance p0, Ljava/util/concurrent/CancellationException;

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iget-object p0, p0, Lgiw;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_92
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_93
    iget-object v0, p0, Lgiw;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_94
    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iput v0, v4, Lnpj;->a:I

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_96
    const-string v0, "Found another update in flight."

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_98
    iget-object p0, p0, Ltlk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_99
    new-instance v4, Landroid/app/DownloadManager$Query;

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_9b
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

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

    :goto_9c
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_9d
    if-eqz v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :cond_7
    :goto_9e
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    check-cast v0, Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_a0
    goto/32 :goto_2c

    nop

    :goto_a1
    const-string v0, "bytes_so_far"

    nop

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

    :goto_a2
    aput-wide v5, v0, v1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    iget-object p0, p0, Lgiw;->b:Ljava/lang/Object;

    nop

    nop

    nop

    :try_start_1
    check-cast p0, Lhdn;

    nop

    nop

    nop

    iget-object p0, p0, Lhdn;->b:Ljava/lang/Object;

    nop

    check-cast p0, Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;

    nop

    nop

    invoke-virtual {p0}, Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;->y()Lhdz;

    move-result-object p0

    nop

    check-cast v0, Lhee;

    nop

    invoke-virtual {p0, v0}, Lhdz;->a(Lhee;)Lhdy;

    move-result-object v1

    nop

    nop
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_a4
    if-gtz v7, :cond_8

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :cond_8
    goto/32 :goto_66

    nop

    nop

    :goto_a5
    iget v0, p0, Lgiw;->c:I

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-direct {v4}, Landroid/app/DownloadManager$Query;-><init>()V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    iget-boolean v1, v0, Lcom/airbnb/lottie/LottieAnimationView;->d:Z

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-static {}, Lowu;->b()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {p0, v1, v0}, Lgvg;->p(Landroid/content/Context;Lggk;)Z

    move-result p0

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

    :goto_aa
    invoke-interface {p0}, Ltud;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    const-string v2, "total_size"

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_ac
    iget-object v0, p0, Lgiw;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_ad
    const-string v2, "asset_"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_ae
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_af
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b0
    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop
.end method
