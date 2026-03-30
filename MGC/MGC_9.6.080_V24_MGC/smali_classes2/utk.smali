.class public final Lutk;
.super Lusj;
.source "PG"


# static fields
.field public static final a:Ljava/lang/String; = "utk"


# instance fields
.field public final b:Luti;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/Map;

.field public final f:Ljava/util/List;

.field public final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final h:Ljava/lang/String;

.field public volatile i:I

.field public j:Ljava/lang/String;

.field public k:Ljava/nio/channels/ReadableByteChannel;

.field public l:Ljava/lang/String;

.field public m:Ljava/net/HttpURLConnection;

.field public final n:Lutc;

.field public final o:I

.field public final p:Lusy;

.field public final q:J

.field public r:I

.field public s:I

.field public t:Z

.field public u:Luso;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public constructor <init>(Lutc;Lrrf;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;)V
    .locals 2

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    :goto_1
    if-eqz p7, :cond_0

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_0
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int/lit8 p5, p5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz p6, :cond_1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    if-ne p6, p7, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    :goto_7
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_8
    move p2, v1

    nop

    :goto_9
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-wide p1, p0, Lutk;->q:J

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput p2, p0, Lutk;->o:I

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/16 p7, 0x7d

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_11
    invoke-interface {p9, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_12
    if-lt p5, p6, :cond_3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p5, p0, Lutk;->j:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_14
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p4, p5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v0, p0, p2, p4}, Luti;-><init>(Lutk;Lrrf;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1a
    const/16 p7, 0x2f

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_1b
    invoke-direct {p0}, Lusj;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/16 p7, 0x2c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1e
    iput-object v0, p0, Lutk;->f:Ljava/util/List;

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

    :goto_1f
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

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

    nop

    nop

    :goto_20
    check-cast p4, Ljava/lang/String;

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_22
    iput-object p1, p0, Lutk;->n:Lutc;

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_23
    iput-object v0, p0, Lutk;->b:Luti;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {p6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :goto_26
    goto/32 :goto_55

    nop

    nop

    :goto_27
    goto/32 :goto_26

    nop

    :goto_28
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-object p1, p0, Lutk;->p:Lusy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2a
    new-instance v0, Ljava/util/TreeMap;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_2b
    check-cast p4, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result p8

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {p4, p5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast p5, Ljava/lang/String;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_30
    check-cast p3, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_32
    new-instance p2, Lutj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_33
    if-ne p6, p7, :cond_4

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :cond_4
    goto/32 :goto_4d

    nop

    nop

    :goto_34
    invoke-direct {p2, p4}, Lutj;-><init>(Ljava/util/concurrent/Executor;)V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {p9}, Ljava/util/List;->size()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_36
    const-wide/16 p1, -0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_37
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_38
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_39
    goto/16 :goto_9

    nop

    nop

    :goto_3a
    :pswitch_0
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3b
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_3c
    iput-object v0, p0, Lutk;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_3d
    iget-object p4, p0, Lutk;->e:Ljava/util/Map;

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

    :goto_3e
    check-cast p3, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3f
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_40
    check-cast p1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_41
    iput v0, p0, Lutk;->i:I

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

    nop

    :goto_42
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_43
    iput-object v0, p0, Lutk;->e:Ljava/util/Map;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_45
    if-ne p6, p7, :cond_5

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_46
    invoke-direct {p4, p3, p8}, Lute;-><init>(Ljava/util/concurrent/Executor;I)V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_48
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    nop

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

    :goto_49
    iput-object p1, p0, Lutk;->h:Ljava/lang/String;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object p1, p1, Lutc;->d:Lusy;

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_4b
    const-string p1, "GET"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p4, p5}, Ljava/lang/String;->charAt(I)C

    move-result p6

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_4d
    const/16 p7, 0x7b

    nop

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

    :goto_4e
    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    goto/32 :goto_43

    nop

    nop

    :goto_4f
    add-int/lit8 p2, p2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_50
    if-lt p2, p1, :cond_6

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-eqz p7, :cond_7

    nop

    goto/32 :goto_3a

    nop

    nop

    :cond_7
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_52
    const/4 v1, 0x0

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_53
    if-eqz p4, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    :cond_8
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_54
    if-ne p6, p7, :cond_9

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :cond_9
    packed-switch p6, :pswitch_data_0

    packed-switch p6, :pswitch_data_1

    packed-switch p6, :pswitch_data_2

    goto/32 :goto_5f

    nop

    nop

    :goto_55
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_56
    if-lez v0, :cond_a

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_a
    goto/32 :goto_27

    nop

    :goto_57
    iput-object p2, p0, Lutk;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p6

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const-string p2, "Invalid header with headername: "

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    new-instance v0, Luti;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_5c
    move p5, v1

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iput-object p6, p0, Lutk;->d:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_5f
    invoke-static {p6}, Ljava/lang/Character;->isISOControl(C)Z

    move-result p7

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_60
    new-instance p4, Lute;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_61
    iget p2, p1, Lutc;->c:I

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_62
    const-string p5, "\r\n"

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 3

    goto/32 :goto_8

    nop

    nop

    :goto_0
    iget-object p0, p0, Luti;->b:Ljava/util/concurrent/Executor;

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

    :goto_1
    invoke-virtual {v0}, Lutk;->c()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Luti;->d:Lutk;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    const/4 v2, 0x4

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    iget-object p0, p0, Lutk;->b:Luti;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    const/4 v2, 0x5

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-ne v0, v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_8
    const v0, 0x15

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    if-ne v0, v2, :cond_1

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    :goto_a
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-ne v0, v2, :cond_2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    :goto_e
    if-ne v0, v2, :cond_4

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_a

    nop

    nop

    :goto_f
    iget-object v0, p0, Lutk;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Lttk;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0, p0, v1}, Lttk;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    const v1, 0x11

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lutk;->e()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_17
    const/4 v2, 0x1

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

    :goto_18
    if-ne v0, v2, :cond_5

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/16 v1, 0x8

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

    :goto_1f
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop
.end method

.method public final b(Ljava/nio/ByteBuffer;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p1, "byteBuffer must be a direct ByteBuffer."

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1e

    nop

    nop

    :goto_3
    invoke-direct {v0, p0, p1, v1}, Lutg;-><init>(Ljava/lang/Object;Ljava/nio/ByteBuffer;I)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    :goto_5
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    :goto_7
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p1, p0, v0, v1}, Lqtz;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x14

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_e
    new-instance v0, Lutg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_f
    const/16 v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    const-string p1, "ByteBuffer is already full."

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    :goto_12
    const v1, 0x1a

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    throw p0

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_16
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    :goto_18
    const/4 v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, v0, v1, p1}, Lutk;->h(IILjava/lang/Runnable;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance p1, Lqtz;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x4

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_3
    invoke-direct {v0, p0, v1}, Lttk;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_a

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    :goto_5
    new-instance v0, Lttk;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lutk;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Lusc;)V
    .locals 4

    goto/32 :goto_b

    nop

    nop

    :goto_0
    const v1, 0x1f

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v1, v0, p0, p1, v2}, Lqxm;-><init>(Luti;Luso;Lusc;I)V

    :try_start_0
    iget-object p0, v0, Luti;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lusk; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_3
    if-ne v0, v2, :cond_1

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

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_5
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_7
    const/4 v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :catch_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Lutk;->c()V

    goto/32 :goto_15

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    :goto_e
    const/4 v2, 0x7

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lutk;->b:Luti;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    if-ne v0, v1, :cond_2

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

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    if-ne v0, v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lutk;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v1, Lqxm;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string p1, "Can\'t enter error state before start"

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_4

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_19
    iget-object v1, v0, Luti;->d:Lutk;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, v0, Luti;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lutk;->u:Luso;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1e
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_5
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1f
    iget-object v3, p0, Lutk;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_21
    const/16 v3, 0x8

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Lutk;->e()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_24
    throw p0

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lttk;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    :goto_a
    const v0, 0x1f

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

    :goto_b
    invoke-direct {v0, p0, v1}, Lttk;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lutk;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x10

    nop

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
.end method

.method public final f()V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lutf;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v2, 0xb

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v1, p0, v0, v2}, Lqtz;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_a
    new-instance v1, Lqtz;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x18

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

    :goto_c
    iget-object p0, p0, Lutk;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    const v0, 0x1d

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

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

    :goto_10
    invoke-direct {v0, p0, v1}, Lutf;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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
.end method

.method public final g(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-static {p1, v1, v2}, La;->bj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    sget-object v0, Lutk;->a:Ljava/lang/String;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

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

    :goto_6
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    const v0, 0x16

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

    nop

    :goto_8
    const v1, 0x3

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

    :goto_9
    iput-boolean p1, p0, Lutk;->t:Z

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v2, " method"

    nop

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
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v1, "Exception in "

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h(IILjava/lang/Runnable;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lutk;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p2, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    if-eqz p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    const-string p3, "Invalid state transition - expected "

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0, p1, p3, v0}, La;->bh(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    throw p2

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    if-ne p0, p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    const/4 p2, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    if-eq p0, p2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    iget-object p0, p0, Lutk;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_13
    const-string v0, " but was "

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    const/16 p2, 0x8

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_15
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_11

    nop

    nop

    nop
.end method
