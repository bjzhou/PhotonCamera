.class final Ltlh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltlo;


# static fields
.field public static final a:Ltlh;


# instance fields
.field private final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_5
    invoke-direct {v0, v1}, Ltlh;-><init>(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x1

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

    :goto_7
    goto/32 :goto_1

    nop

    nop

    :goto_8
    new-instance v0, Ltlh;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    :goto_b
    sput-object v0, Ltlh;->a:Ltlh;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0xc

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
.end method

.method public constructor <init>(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Ltlh;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ltln;
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    const-class p0, Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Ltlh;->b:I

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

    :goto_3
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_17

    nop

    nop

    :goto_8
    throw p0

    nop

    :goto_9
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string p1, "This should never be called."

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, "Unable to get message info for "

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_e
    throw v0

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_12
    const-string v0, "Unsupported message type: "

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_13
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_14
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    :goto_16
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

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

    :goto_17
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_0
    const-class p0, Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    nop

    sget-object v0, Ltkg;->aU:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Ltkg;

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v0, :cond_3

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

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget-object v0, Ltkg;->aU:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Ltkg;

    nop

    nop

    nop

    goto :goto_1b

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    nop

    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    const-string v1, "Class initialization cannot fail."

    nop

    nop

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v0, :cond_5

    nop

    invoke-static {p0}, Ltmu;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Ltkg;

    nop

    nop

    nop

    const/4 v1, 0x6

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Ltkg;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    sget-object v1, Ltkg;->aU:Ljava/util/Map;

    nop

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    nop

    nop

    nop

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    nop

    nop

    nop

    nop

    :cond_5
    :goto_1c
    const/4 p0, 0x3

    nop

    invoke-virtual {v0, p0}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Ltln;

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x12

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_21
    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_22
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_25
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Ljava/lang/Class;)Z
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

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
    const/4 p0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    return p0

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

    :goto_5
    iget p0, p0, Ltlh;->b:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    const-class p0, Ltkg;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
