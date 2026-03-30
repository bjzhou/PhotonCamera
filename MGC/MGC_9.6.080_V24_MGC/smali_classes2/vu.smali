.class public final Lvu;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Luep;


# instance fields
.field public final b:J

.field public final c:Lvq;

.field public final d:Ljava/util/List;

.field public final e:Lueq;

.field public final f:Lueo;

.field public final g:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final h:J

.field private final i:J

.field private final j:Lsb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x8

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x11

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-direct {v1, v2, v3, v0}, Luep;-><init>(JLucu;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v1, Luep;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v0, Luer;->a:Luer;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    sput-object v1, Lvu;->a:Luep;

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

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-wide/16 v2, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public constructor <init>(Lsb;JJLjava/util/Set;)V
    .locals 0

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lvu;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

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

    :goto_1
    invoke-direct {p2, p0}, Lvq;-><init>(Lvu;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Lsb;->b()Ljava/util/Map;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget p3, p3, Lqq;->a:I

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object p2, Luer;->a:Luer;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_7
    const/4 p3, 0x0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_8
    invoke-direct {p2, p3}, Ltzh;-><init>([B)V

    goto/32 :goto_2

    nop

    nop

    :goto_9
    invoke-direct {p4, p3}, Lqq;-><init>(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    new-instance p2, Ltzh;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object p1, Lvt;->a:Lvt;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_3

    nop

    nop

    :goto_e
    invoke-direct {p3, p1, p2}, Lueq;-><init>(Ljava/lang/Object;Lucu;)V

    goto/32 :goto_24

    nop

    nop

    :goto_f
    invoke-static {p2}, Lrkm;->ab(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_10
    invoke-interface {p6, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    iput-wide p2, p0, Lvu;->i:J

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_12
    if-nez p4, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    new-instance p4, Lvs;

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

    :goto_14
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    :goto_15
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-object p2, Lvu;->a:Luep;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_17
    invoke-direct {p4, p0, p3}, Lvs;-><init>(Lvu;I)V

    goto/32 :goto_d

    nop

    nop

    :goto_18
    iput-wide p2, p0, Lvu;->b:J

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez p3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance p3, Lueq;

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

    nop

    :goto_1b
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object p1, p0, Lvu;->j:Lsb;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1d
    invoke-direct {p2, p3, p1}, Lueo;-><init>(ILucu;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1e
    iput-object p1, p0, Lvu;->d:Ljava/util/List;

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

    :goto_1f
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_20
    new-instance p2, Lueo;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p2}, Luep;->c()J

    move-result-wide p2

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

    :goto_23
    sget-object p1, Luer;->a:Luer;

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

    nop

    :goto_24
    iput-object p3, p0, Lvu;->e:Lueq;

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

    nop

    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_26
    new-instance p4, Lqq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_29
    const/4 p3, 0x0

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

    :goto_2a
    iput-object p2, p0, Lvu;->c:Lvq;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast p3, Lqq;

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

    :goto_2c
    new-instance p2, Lvq;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2d
    iput-wide p4, p0, Lvu;->h:J

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput-object p2, p0, Lvu;->f:Lueo;

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

    :goto_2f
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 3

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_12

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_2
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v2}, Lpm;->a()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    if-lt v1, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, p0, Lvu;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lvu;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_c
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    goto :goto_a

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v2, Lpm;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

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

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    goto/32 :goto_3

    nop

    nop

    :goto_0
    const-string v1, "Frame-"

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

    :goto_1
    const-string v2, "FrameId(value="

    nop

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

    nop

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v1, 0x40

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_f
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-wide v3, p0, Lvu;->h:J

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

    :goto_12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    :goto_14
    iget-wide v3, p0, Lvu;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1c

    nop

    :goto_19
    const/16 v1, 0x28

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_6

    nop

    nop

    :goto_1d
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-wide v2, p0, Lvu;->i:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1f
    const/16 v2, 0x29

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method
