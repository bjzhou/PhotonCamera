.class public final synthetic Lquu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrsk;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

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
    iput-object p1, p0, Lquu;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lquu;->c:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lquu;->b:Ljava/lang/Object;

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

    nop

    :goto_4
    return-void

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p2, p0, Lquu;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iput p3, p0, Lquu;->c:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lquu;->b:Ljava/lang/Object;

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
.end method

.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lquu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Lquu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lquu;->c:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    sget-object p1, Lcom/google/android/apps/camera/imax/cyclops/metadata/vUwG/ZKDLyMOUoobPIS;->YJniThfH:Ljava/lang/String;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x0

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
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v4, v5}, Lqbq;->j(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/32 :goto_5f

    nop

    nop

    :goto_3
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v3, Lquj;->a:Lquj;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v2}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Lqxz;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-ne v0, v3, :cond_0

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Lquu;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_b
    if-ne v0, v1, :cond_1

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lqvg;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lquu;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p1, v2, Lquj;->c:Lurc;

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_10
    const-string v2, "Transmitters"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v3}, Ltkb;->o()V

    :goto_14
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_15
    or-int/2addr p1, v1

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

    :goto_16
    check-cast p1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_17
    check-cast p0, Lqxa;

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast p1, Lqwv;

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_19
    const-class v3, Lcom/google/android/libraries/performance/primes/transmitter/LifeboatReceiver;

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_1a
    const/4 p0, 0x0

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Lquu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v6, "Failed to deserialize newFileKey:"

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1, v2}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_1e
    new-instance v1, Lrsu;

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Ltis;->h()[B

    move-result-object p1

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Lquu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_21
    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_22
    goto/32 :goto_96

    nop

    nop

    :goto_23
    goto/32 :goto_51

    nop

    nop

    :goto_24
    const/4 v3, 0x3

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_26
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_28
    iget-object p0, p0, Lquu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    :goto_29
    check-cast p1, Ljava/lang/String;

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_2a
    invoke-virtual {v5, v3}, Lrth;->f(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2c
    if-ne v0, v2, :cond_2

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :cond_3
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_30
    check-cast p1, Lqwx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iput v1, p1, Lqwv;->b:I

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_33
    invoke-virtual {v1, v3}, Ltkb;->A(Ljava/lang/String;)V

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_34
    iget-object v0, p0, Lqxz;->e:Ljava/lang/Object;

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

    nop

    :goto_35
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

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

    nop

    nop

    :goto_36
    check-cast v1, Ljava/lang/String;

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1}, Ltkg;->C()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_38
    check-cast v0, Ltkb;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v0, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_3b
    iget-object p0, p0, Lquu;->b:Ljava/lang/Object;

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

    nop

    nop

    :goto_3c
    invoke-virtual {p1, v2}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_3d
    check-cast p1, Lquj;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3e
    invoke-static {p1, p0, v0}, Lqvg;->b(Lpyd;Landroid/net/Uri;Lrss;)Lpyd;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

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

    :goto_40
    if-eqz p1, :cond_4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p1}, Ltkg;->C()Z

    move-result p1

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

    :goto_42
    new-instance v1, Landroid/content/Intent;

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_43
    iget-object p1, v3, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object p1, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_45
    check-cast p0, Lpxd;

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_46
    check-cast p1, Ljava/lang/String;

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

    :goto_47
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v0, p0, Lquu;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_49
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    check-cast v4, Lqaa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_4c
    check-cast v0, Ltkb;

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_4d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/16 :goto_9c

    nop

    nop

    :catch_0
    move-exception v4

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast p0, Lqwx;

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    check-cast p1, Lurc;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget v0, p0, Lquu;->c:I

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

    :goto_52
    iget-object v0, v0, Loev;->g:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget-object p0, p0, Lquu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v3, v0}, Ltkb;->B(Ljava/lang/String;)V

    :goto_55
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iput-object p0, p1, Lqwv;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-static {v5}, Lrth;->c(Ljava/lang/String;)Lrth;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_59
    check-cast p0, Lqwz;

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v0, p1}, Ltkb;->r(Ltkg;)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    check-cast p0, Landroid/net/Uri;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    check-cast p1, Lpyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_5d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    if-eqz v0, :cond_5

    nop

    goto/32 :goto_55

    nop

    nop

    :cond_5
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    move-object v4, v2

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_60
    iget-object p0, p0, Lhwy;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-nez v3, :cond_6

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_62
    check-cast v3, Ljava/lang/String;

    nop

    nop

    nop

    nop

    :try_start_0
    move-object v4, v2

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lqaa;

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lqaa;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    move-object v5, v2

    nop

    nop

    nop

    nop

    check-cast v5, Lqaa;

    nop

    iget-object v5, v5, Lqaa;->b:Lpxo;

    nop

    nop

    nop

    invoke-static {v3, v4, v5}, Lpuq;->ao(Ljava/lang/String;Landroid/content/Context;Lpxo;)Lpwz;

    move-result-object v4

    nop

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lqcr; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto/32 :goto_70

    nop

    nop

    :goto_64
    iget-object p1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_66
    iget-object p0, p0, Lqxa;->a:Lhwy;

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_67
    check-cast p0, Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_68
    iget-object v0, p0, Lquu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_69
    iget-object v2, v0, Ltkd;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_6a
    iget-object p0, p0, Lquu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    :goto_6b
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v3}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    :goto_6e
    iget-object p0, p0, Lqxz;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iget-object p1, p0, Lquu;->b:Ljava/lang/Object;

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

    nop

    nop

    :goto_70
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_71
    invoke-interface {v3}, Ljava/util/List;->size()I

    goto/32 :goto_a5

    nop

    nop

    :goto_72
    iget-object v4, p0, Lquu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v3, v0}, Ltkb;->r(Ltkg;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_74
    const/4 v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_75
    sget-object v0, Lqwv;->a:Lqwv;

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_76
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_77
    new-instance v2, Landroid/content/ComponentName;

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object p1

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_79
    check-cast v4, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v1}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_7b
    return-object p0

    nop

    nop

    :goto_7c
    goto/32 :goto_b1

    nop

    nop

    :goto_7d
    invoke-virtual {p0}, Lshn;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    return-object p0

    nop

    nop

    nop

    nop

    :goto_7f
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    sget-object v0, Lqxh;->a:Ljava/util/concurrent/ConcurrentMap;

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_81
    invoke-direct {v1, p1, v0}, Lrsu;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {p1, v2}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iget-object v0, v0, Lqwv;->c:Ltkv;

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_85
    check-cast p1, Lquj;

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

    nop

    :goto_86
    if-nez v0, :cond_7

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    check-cast v0, Ltkd;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_89
    if-lez v0, :cond_8

    nop

    goto/32 :goto_23

    nop

    :cond_8
    goto/32 :goto_22

    nop

    :goto_8a
    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8c
    const v1, 0xd

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_8d
    invoke-virtual {v0, p1}, Ltkb;->r(Ltkg;)V

    goto/32 :goto_87

    nop

    nop

    :goto_8e
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_8f
    return-object p0

    nop

    nop

    nop

    :goto_90
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iget p1, v2, Lquj;->b:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_92
    const/4 v2, 0x5

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_93
    goto :goto_9c

    nop

    nop

    nop

    :goto_94
    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_95
    return-object p0

    nop

    :goto_96
    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_97
    if-eqz p1, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_98
    iget-object v3, p1, Lqwx;->b:Ltll;

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    check-cast p0, Lqvg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9a
    check-cast v0, Lqwv;

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    iget-object v2, p0, Lquu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    :goto_9c
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9d
    return-object p0

    nop

    nop

    nop

    nop

    :goto_9e
    goto/32 :goto_30

    nop

    nop

    :goto_9f
    check-cast p0, Lqwv;

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_a0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_a1
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    check-cast v3, Ltkb;

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_a4
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-interface {v4}, Lpxo;->a()V

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {v0, v4, p0}, Ltkb;->C(Ljava/lang/String;Lqwv;)V

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_a7
    const-string v0, "MetricSnapshot"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_a8
    const-string v5, "|"

    nop

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

    :goto_a9
    invoke-interface {p0, p1, v0}, Lsho;->b(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lshn;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    check-cast v0, Loev;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    if-nez v5, :cond_a

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_ac
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_ad
    check-cast v1, Ltkb;

    nop

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

    :goto_ae
    check-cast v0, Lqwv;

    nop

    nop

    nop

    :goto_af
    goto/32 :goto_53

    nop

    nop

    :goto_b0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_b1
    check-cast p1, Lpxd;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-virtual {v1, p1}, Ltkb;->r(Ltkg;)V

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_b6
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    iget-object p1, p1, Lpxd;->b:Ltll;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_b8
    or-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_b9
    const/4 v3, 0x2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_bb
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_be
    iget-object v4, v4, Lqaa;->b:Lpxo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    check-cast v2, Lquj;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c0
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

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

    :goto_c2
    invoke-interface {p0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_c3
    iget v2, p1, Lqwv;->b:I

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    iput p1, v2, Lquj;->b:I

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_c6
    iget-object p0, p0, Lquu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_c7
    if-ne v0, v3, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    goto/32 :goto_5b

    nop

    nop
.end method
