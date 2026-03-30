.class public final Lrco;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrbz;


# static fields
.field private static final a:Ljava/lang/String; = "rco"

.field private static b:Ljava/util/HashMap;

.field private static c:Ljava/util/HashMap;

.field private static d:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method static b(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

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

    :goto_2
    const-string p0, "NO_ID"

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0, p1}, Lqqm;->g(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_3

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    const-string v0, "id/0x"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    if-gez p1, :cond_0

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_b
    return-object p0

    nop

    :goto_c
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d
    check-cast p0, Ljava/lang/String;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p0}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object p0

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

.method static c(Landroid/content/Context;Ljava/lang/Object;Lrcs;Ljava/lang/String;)V
    .locals 18

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_15

    nop

    nop

    :goto_1
    move-object v5, v11

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2
    move-object v3, v4

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object/from16 v7, p0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_5
    move-object/from16 v4, p3

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

    :goto_6
    const-string v5, "_"

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_35

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object/from16 v9, p2

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_a
    new-instance v11, Ljava/util/HashSet;

    nop

    nop

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

    :goto_b
    move/from16 v17, v6

    nop

    nop

    nop

    :catch_0
    :goto_c
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v8, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    invoke-static {v12}, Lrco;->i(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v13

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lt v6, v14, :cond_1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_2
    goto/32 :goto_14

    nop

    :goto_11
    invoke-virtual {v12}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v12

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_12
    move/from16 v17, v6

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_13
    const-class v0, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_16
    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :catch_1
    goto/32 :goto_b

    nop

    nop

    :goto_17
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v6, 0x0

    nop

    nop

    :goto_19
    goto/32 :goto_f

    nop

    nop

    :goto_1a
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1c
    move-object/from16 v0, p0

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1d
    move-object/from16 v1, p2

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

    :goto_1e
    array-length v14, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1f
    move-object/from16 v10, p3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_20
    const/16 v16, 0x0

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_19

    nop

    nop

    :goto_22
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move-object v6, v11

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static/range {v0 .. v6}, Lrco;->f(Landroid/content/Context;Lrcs;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_c

    nop

    :cond_3
    move/from16 v17, v6

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_8

    nop

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    invoke-interface {v2}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v0, v9, v1}, Lrco;->c(Landroid/content/Context;Ljava/lang/Object;Lrcs;Ljava/lang/String;)V

    goto/16 :goto_c

    nop

    :goto_24
    move/from16 v17, v6

    nop

    nop

    nop

    invoke-interface {v2}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_4

    nop

    nop

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    nop

    invoke-static {v7, v1}, Lrco;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v16

    nop

    nop

    nop

    nop

    goto/16 :goto_27

    nop

    nop

    nop

    :cond_4
    invoke-interface {v2}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v1

    nop

    nop

    nop

    nop

    array-length v4, v1

    nop

    if-lez v4, :cond_5

    nop

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    nop

    new-instance v15, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-static {v9, v1, v4, v5, v11}, Lrco;->g(Lrcs;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;Ljava/util/Set;)V

    :cond_5
    invoke-interface {v2}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v1

    nop

    array-length v2, v1

    nop

    nop

    nop

    nop

    if-lez v2, :cond_8

    nop

    nop

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-ge v5, v2, :cond_7

    nop

    nop

    nop

    aget-object v6, v1, v5

    nop

    nop

    invoke-interface {v6}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v15

    nop

    nop

    nop

    nop

    if-ne v15, v4, :cond_6

    nop

    nop

    invoke-interface {v6}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    move-object/from16 v16, v1

    nop

    nop

    nop

    goto :goto_26

    nop

    nop

    nop

    :cond_6
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_7
    :goto_26
    if-nez v16, :cond_8

    nop

    nop

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    nop

    nop

    nop

    :cond_8
    :goto_27
    if-nez v16, :cond_9

    nop

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    nop

    nop

    nop

    nop

    nop

    :cond_9
    move-object/from16 v1, v16

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-static {v9, v0, v1, v11}, Lrco;->h(Lrcs;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_16

    nop

    nop

    :goto_28
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_0

    nop

    nop

    :goto_2b
    aget-object v0, v13, v6

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    nop

    sget-object v2, Lrco;->d:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Landroid/view/ViewDebug$ExportedProperty;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    nop

    if-eqz v3, :cond_a

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v3

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    nop

    nop

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    goto :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_a
    const-string v3, ""

    nop

    nop

    :goto_2c
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_6

    nop

    nop

    :goto_2d
    move-object/from16 v5, v16

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2e
    const v1, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_2f
    move-object/from16 v2, p2

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move-object v3, v12

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static/range {v0 .. v5}, Lrco;->e(Landroid/content/Context;Ljava/lang/Object;Lrcs;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Set;)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_32
    move-object v12, v0

    nop

    :goto_33
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_34
    if-eq v12, v0, :cond_b

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

    nop

    :cond_b
    :goto_35
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    move-object/from16 v8, p1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_38
    add-int/lit8 v6, v17, 0x1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_39
    move-object v4, v5

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_3a
    if-ne v1, v4, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_c
    :try_start_2
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    if-ne v1, v4, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_24

    nop

    nop

    nop

    :cond_d
    const-class v4, [I

    nop

    nop

    nop

    if-ne v1, v4, :cond_3

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    move-object v4, v1

    nop

    nop

    check-cast v4, [I

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    const-string v16, ""

    nop

    nop
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3b
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static d(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_1
    goto/32 :goto_27

    nop

    :goto_3
    new-instance p1, Ljava/lang/RuntimeException;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Ljava/lang/reflect/InvocationTargetException;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    :catch_0
    move-exception p0

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

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lgiw;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_f
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    const-string v0, "Unexpected exception"

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    const/16 v2, 0xa

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    throw p1

    nop

    nop

    :goto_15
    goto/32 :goto_19

    nop

    nop

    :goto_16
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_17
    check-cast p1, Landroid/view/View;

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

    :goto_18
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_19
    check-cast p0, Ljava/lang/IllegalAccessException;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1a
    return-object p0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance p1, Ljava/lang/RuntimeException;

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

    :goto_1d
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :catch_1
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    const-wide/16 v0, 0xfa0

    nop

    invoke-virtual {v2, v0, v1, p0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_9

    nop

    nop

    :goto_1f
    throw p0

    nop

    :goto_20
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_21
    if-eq v3, v4, :cond_2

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_22
    throw p1

    nop

    nop

    nop

    :catch_2
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v0, p0, p1, v2}, Lgiw;-><init>(Ljava/lang/reflect/Method;Landroid/view/View;I)V

    goto/32 :goto_32

    nop

    nop

    :goto_24
    new-instance v0, Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-eqz p1, :cond_3

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_2a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2b
    const-string v0, "Unexpected cancellation exception"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2c
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    instance-of p1, p0, Ljava/lang/reflect/InvocationTargetException;

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

    nop

    :goto_2f
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_28

    nop

    :goto_32
    new-instance v2, Ljava/util/concurrent/FutureTask;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_33
    if-nez p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_34
    instance-of p1, p0, Ljava/lang/IllegalAccessException;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_35
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_36
    instance-of v0, p1, Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static e(Landroid/content/Context;Ljava/lang/Object;Lrcs;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Set;)V
    .locals 18

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eq v2, v5, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    invoke-interface {v3}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    if-eqz v7, :cond_1

    nop

    nop

    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v1}, Lrco;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    nop

    move-object/from16 v16, v11

    nop

    goto/16 :goto_13

    nop

    :cond_1
    invoke-interface {v3}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v2

    nop

    nop

    nop

    nop

    array-length v5, v2

    nop

    nop

    nop

    if-lez v5, :cond_4

    nop

    nop

    move-object v5, v1

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Ljava/lang/Integer;

    nop

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_e

    nop

    nop

    :goto_1
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move-object/from16 v15, p1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-static {v0, v15}, Lrco;->d(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    nop

    nop

    nop

    nop

    sget-object v3, Lrco;->d:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Landroid/view/ViewDebug$ExportedProperty;

    nop

    invoke-interface {v3}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_2

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    new-instance v5, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    nop

    nop

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto :goto_3

    nop

    nop

    nop

    :cond_2
    const-string v4, ""

    nop

    nop

    nop

    :goto_3
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    :goto_6
    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_8
    const-string v6, "_"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static/range {p3 .. p3}, Lrco;->j(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v11

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    array-length v12, v11

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object/from16 v8, p2

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

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_d
    goto/16 :goto_15

    nop

    nop

    :catch_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move-object/from16 v16, v11

    nop

    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-static {v8, v2, v5, v6, v10}, Lrco;->g(Lrcs;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;Ljava/util/Set;)V

    goto :goto_f

    nop

    nop

    nop

    :cond_4
    move-object/from16 v16, v11

    nop

    nop

    :goto_f
    invoke-interface {v3}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v2

    nop

    nop

    array-length v3, v2

    nop

    if-lez v3, :cond_8

    nop

    nop

    nop

    move-object v5, v1

    nop

    check-cast v5, Ljava/lang/Integer;

    nop

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    nop

    nop

    nop

    const/4 v11, 0x0

    nop

    :goto_10
    if-ge v11, v3, :cond_6

    nop

    aget-object v13, v2, v11

    nop

    move-object/from16 v17, v2

    nop

    nop

    nop

    nop

    invoke-interface {v13}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v2

    nop

    if-ne v2, v6, :cond_5

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v13}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    goto :goto_11

    nop

    :cond_5
    add-int/lit8 v11, v11, 0x1

    nop

    nop

    nop

    nop

    move-object/from16 v2, v17

    nop

    nop

    nop

    nop

    goto :goto_10

    nop

    nop

    :cond_6
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v2, :cond_8

    nop

    nop

    nop

    nop

    nop

    move-object v1, v5

    nop

    goto/16 :goto_13

    nop

    :goto_12
    move-object/from16 v16, v11

    nop

    nop

    nop

    const-class v5, [I

    nop

    nop

    if-ne v2, v5, :cond_7

    nop

    nop

    move-object v5, v1

    nop

    nop

    nop

    nop

    check-cast v5, [I

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    const-string v6, "()"

    nop

    move-object/from16 v0, p0

    nop

    nop

    move-object/from16 v1, p2

    nop

    nop

    nop

    nop

    nop

    move-object v2, v3

    nop

    nop

    nop

    nop

    move-object v3, v5

    nop

    nop

    nop

    move-object v5, v6

    nop

    move-object/from16 v6, p5

    nop

    nop

    invoke-static/range {v0 .. v6}, Lrco;->f(Landroid/content/Context;Lrcs;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_15

    nop

    nop

    nop

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-nez v2, :cond_8

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_8

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v1, v8, v0}, Lrco;->c(Landroid/content/Context;Ljava/lang/Object;Lrcs;Ljava/lang/String;)V

    goto :goto_15

    nop

    nop

    :cond_8
    :goto_13
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "()"

    nop

    nop

    nop

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    invoke-static {v8, v0, v1, v10}, Lrco;->h(Lrcs;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Set;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move-object/from16 v16, v11

    nop

    nop

    nop

    nop

    nop

    :catch_1
    :goto_15
    goto/32 :goto_1f

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

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_7

    nop

    nop

    :goto_18
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move-object/from16 v9, p4

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move-object/from16 v11, v16

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1d
    move-object/from16 v10, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1e
    aget-object v0, v11, v14

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 v14, v14, 0x1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    :goto_21
    goto/32 :goto_24

    nop

    nop

    :goto_22
    if-lt v14, v12, :cond_9

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_9
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_23
    move-object/from16 v7, p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1a

    nop

    nop

    nop

    nop
.end method

.method private static f(Landroid/content/Context;Lrcs;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 16

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_0
    if-gtz v5, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-gtz v3, :cond_1

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_c

    nop

    nop

    :goto_5
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_49

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_32

    nop

    nop

    :goto_9
    invoke-interface {v14}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_a
    move-object/from16 v14, p6

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v14, 0x0

    nop

    nop

    :goto_c
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_2
    goto/32 :goto_d

    nop

    :goto_13
    move-object/from16 v11, p5

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_14
    const/4 v12, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v6, :cond_3

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_3
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v6, 0x1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_17
    array-length v13, v4

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

    :goto_18
    if-eqz v12, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_5

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_1d
    aget-object v14, v2, v13

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1e
    add-int/lit8 v13, v13, 0x1

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eq v15, v9, :cond_5

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_5
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_e

    nop

    :goto_24
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    array-length v12, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

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

    nop

    nop

    :goto_27
    if-lt v9, v8, :cond_6

    nop

    goto/32 :goto_2f

    nop

    :cond_6
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v13, 0x0

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_1a

    nop

    nop

    :goto_2b
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v1, 0xe

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v14}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v11

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

    :goto_2e
    goto/16 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v6, :cond_7

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_18

    nop

    nop

    :goto_32
    move-object/from16 v10, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_33
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    :goto_34
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_35
    aget-object v15, v4, v14

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {v13, v7, v12, v14}, Lrco;->h(Lrcs;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Set;)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_37
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_38
    array-length v8, v1

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

    :goto_39
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->indexMapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_3a
    move-object/from16 v1, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {v0, v10}, Lrco;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

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

    nop

    :goto_3d
    array-length v3, v2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3e
    if-lt v14, v13, :cond_8

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_3f
    aget v10, v1, v9

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_40
    if-lt v13, v12, :cond_9

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-interface {v15}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v12

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_42
    array-length v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_43
    add-int/lit8 v14, v14, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_44
    const/4 v9, 0x0

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-eq v7, v10, :cond_a

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_4c
    move-object/from16 v13, p1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4d
    invoke-interface {v15}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v7

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

    :goto_4e
    if-nez v0, :cond_b

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4f
    add-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop
.end method

.method private static g(Lrcs;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;Ljava/util/Set;)V
    .locals 7

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eq v5, v6, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2
    move v2, v1

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x17

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_27

    nop

    nop

    :goto_6
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_7
    const-string v5, "0x"

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v6, :cond_1

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    :goto_b
    if-lt v2, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v3}, Landroid/view/ViewDebug$FlagToString;->outputIf()Z

    move-result v4

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    invoke-interface {v3}, Landroid/view/ViewDebug$FlagToString;->equals()I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_3
    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_11
    aget-object v3, p1, v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_12
    invoke-interface {v3}, Landroid/view/ViewDebug$FlagToString;->name()Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v3}, Landroid/view/ViewDebug$FlagToString;->mask()I

    move-result v5

    nop

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
    invoke-virtual {p3, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz v6, :cond_4

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz v4, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_5
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    and-int/2addr v5, p2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    :goto_1d
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    array-length v0, p1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1f
    move v4, v1

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_6
    goto/32 :goto_1a

    nop

    :goto_23
    invoke-static {p0, v3, v4, p4}, Lrco;->h(Lrcs;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Set;)V

    :goto_24
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_25
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move v6, v1

    nop

    :goto_27
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_28
    const/4 v1, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2a
    goto/32 :goto_1b

    nop

    nop

    :goto_2b
    const/4 v6, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2c
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
.end method

.method private static h(Lrcs;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string p2, "null"

    nop

    nop

    nop

    nop

    :catchall_0
    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0, p1, p2}, Lrcs;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x7

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

    :goto_a
    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    :goto_e
    const v1, 0xb

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

    :goto_f
    const-string p2, "[EXCEPTION]"

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    check-cast p2, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    goto :goto_11

    nop

    nop

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_11
    :try_start_1
    const-string v0, "\n"

    nop

    nop

    const-string v1, "\\n"

    nop

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    :goto_12
    goto/16 :goto_3

    nop

    :goto_13
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_16
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static i(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 8

    goto/32 :goto_30

    nop

    nop

    :goto_0
    const/16 v1, 0x200

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_4
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto/32 :goto_20

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

    goto/32 :goto_5

    nop

    nop

    :goto_8
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_38

    nop

    nop

    :goto_a
    goto/32 :goto_39

    nop

    :goto_b
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    :goto_f
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_10
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_11
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_13
    goto/32 :goto_1a

    nop

    nop

    :goto_14
    if-lt v2, v4, :cond_2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_17
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_18
    array-length v4, v3

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1a
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1b
    if-nez v6, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sput-object v0, Lrco;->b:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_1f
    new-array v2, v2, [Ljava/lang/reflect/Field;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_20
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_35

    nop

    nop

    :goto_21
    goto :goto_19

    nop

    :goto_22
    goto/32 :goto_3

    nop

    nop

    :goto_23
    sget-object v0, Lrco;->d:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_24
    check-cast v1, [Ljava/lang/reflect/Field;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    new-array v3, v2, [Ljava/lang/reflect/Field;

    nop

    nop

    :goto_26
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

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

    :goto_28
    return-object v1

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_15

    nop

    nop

    :goto_2a
    const/4 v2, 0x0

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2b
    const-string v7, "$$robo$$"

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast v6, Landroid/view/ViewDebug$ExportedProperty;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2d
    if-lez v0, :cond_4

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

    :cond_4
    goto/32 :goto_a

    nop

    :goto_2e
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2f
    sget-object v0, Lrco;->b:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_30
    const v0, 0xf

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_31
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_32
    const-string v5, "Failed to export "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_33
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_35
    const-class v6, Landroid/view/ViewDebug$ExportedProperty;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_36
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_5
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz v6, :cond_6

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_38
    return-object v1

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3b
    const-class v6, Landroid/view/ViewDebug$ExportedProperty;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3c
    sget-object v7, Lrco;->d:Ljava/util/HashMap;

    nop

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

    :goto_3d
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    sget-object v0, Lrco;->b:Ljava/util/HashMap;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_40
    check-cast v1, [Ljava/lang/reflect/Field;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_41
    sput-object v0, Lrco;->d:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_2f

    nop

    nop

    :goto_43
    aget-object v5, v3, v2

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_44
    sget-object v3, Lrco;->a:Ljava/lang/String;

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
.end method

.method private static j(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 8

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    const-class v6, Landroid/view/ViewDebug$ExportedProperty;

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

    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_11

    nop

    nop

    :goto_4
    const v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_5
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_7
    return-object v1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_18

    nop

    :goto_b
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_c
    new-array v2, v2, [Ljava/lang/reflect/Method;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_d
    check-cast v1, [Ljava/lang/reflect/Method;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v6, :cond_0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lt v2, v4, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    :goto_10
    aget-object v5, v3, v2

    nop

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

    nop

    :goto_11
    return-object v1

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/16 v1, 0x200

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_14
    new-array v3, v2, [Ljava/lang/reflect/Method;

    nop

    :goto_15
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz v6, :cond_2

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    array-length v4, v3

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_3c

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

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v2, 0x0

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_37

    nop

    nop

    :goto_1c
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    :goto_1e
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v5, "Failed to export "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v6, Landroid/view/ViewDebug$ExportedProperty;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_22
    const/16 v1, 0x64

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_25
    check-cast v1, [Ljava/lang/reflect/Method;

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

    :goto_26
    sput-object v0, Lrco;->c:Ljava/util/HashMap;

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const v1, 0x2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2d
    const-class v7, Ljava/lang/Void;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_2e
    array-length v6, v6

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_30
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-eqz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    sget-object v0, Lrco;->c:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v6, 0x1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_34
    sget-object v3, Lrco;->a:Ljava/lang/String;

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

    nop

    nop

    :goto_35
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_15

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_38
    if-eqz v6, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_6
    goto/32 :goto_33

    nop

    nop

    :goto_39
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_3c
    const-class v6, Landroid/view/ViewDebug$ExportedProperty;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object v0, Lrco;->d:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3e
    sget-object v0, Lrco;->c:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_40
    sput-object v0, Lrco;->d:Ljava/util/HashMap;

    nop

    nop

    :goto_41
    goto/32 :goto_32

    nop

    nop

    :goto_42
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_43
    if-ne v6, v7, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_7
    goto/32 :goto_29

    nop

    nop

    :goto_44
    if-lez v0, :cond_8

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_23

    nop

    :goto_45
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

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

    :goto_46
    sget-object v7, Lrco;->d:Ljava/util/HashMap;

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

    :goto_47
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_48
    const-string v7, "$$robo$$"

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_49
    new-instance v0, Ljava/util/HashMap;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_4b
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lrcs;Landroid/view/View;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-static {v0, p2, p1, p0}, Lrco;->c(Landroid/content/Context;Ljava/lang/Object;Lrcs;Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string p0, ""

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method
