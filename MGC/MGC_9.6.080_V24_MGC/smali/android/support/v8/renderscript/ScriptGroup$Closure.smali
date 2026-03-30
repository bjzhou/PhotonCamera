.class public final Landroid/support/v8/renderscript/ScriptGroup$Closure;
.super Landroid/support/v8/renderscript/BaseObj;
.source "PG"


# static fields
.field private static final TAG:Ljava/lang/String; = "Closure"


# instance fields
.field private mArgs:[Ljava/lang/Object;

.field private mBindings:Ljava/util/Map;

.field private mFP:Landroid/support/v8/renderscript/FieldPacker;

.field private mGlobalFuture:Ljava/util/Map;

.field private mReturnFuture:Landroid/support/v8/renderscript/ScriptGroup$Future;

.field private mReturnValue:Landroid/support/v8/renderscript/Allocation;


# direct methods
.method private 9de66bcc7845262e500cb935a06a5476m(Landroid/support/v8/renderscript/RenderScript;ILandroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V
    .locals 5

    goto/32 :goto_2e

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

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1
    if-nez p7, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1e

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    aput-wide v1, p8, p2

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_13

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

    :goto_7
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_9
    aput p0, p6, p2

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

    nop

    :goto_a
    invoke-static {p4}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->RwZGzGsgBRnteewA(Landroid/support/v8/renderscript/ScriptGroup$Future;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object p4, v0

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

    :goto_c
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_7

    nop

    :goto_d
    aput p0, p6, p2

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_e
    goto/16 :goto_22

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p4, p1}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->VUQYJaalmIyhZAND(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v3, p1}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->fxRpKvpLnAbiNdyi(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

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

    :goto_13
    check-cast p4, Landroid/support/v8/renderscript/ScriptGroup$Future;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    iget p0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    aput-wide v3, p7, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_16
    aput-wide p3, p5, p2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-wide/16 v1, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-wide v3, v1

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1d

    nop

    nop

    :goto_1a
    goto :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    instance-of p7, p4, Landroid/support/v8/renderscript/ScriptGroup$Input;

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

    :goto_1d
    aput-wide v3, p8, p2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1e
    aput-wide v1, p7, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1f
    invoke-static {p4, p0, p2}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->kbDLnbTMxfrdJVcV(Landroid/support/v8/renderscript/ScriptGroup$Input;Landroid/support/v8/renderscript/ScriptGroup$Closure;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p4}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->WuxOICqTUzBbYLMe(Landroid/support/v8/renderscript/ScriptGroup$Future;)Landroid/support/v8/renderscript/Script$FieldID;

    move-result-object p4

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_21
    invoke-static {p4, p0, p3}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->VWQgOSEkFgbOPLVq(Landroid/support/v8/renderscript/ScriptGroup$Input;Landroid/support/v8/renderscript/ScriptGroup$Closure;Landroid/support/v8/renderscript/Script$FieldID;)V

    :goto_22
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_23
    aput-wide v1, p5, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_24
    return-void

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_26
    instance-of v0, p4, Landroid/support/v8/renderscript/ScriptGroup$Future;

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

    :goto_27
    check-cast p4, Landroid/support/v8/renderscript/ScriptGroup$Input;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_28
    if-lt p2, p1, :cond_3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_29
    iget-wide p3, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2a
    if-nez p4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    array-length p1, p1

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

    nop

    nop

    :goto_2c
    iget-object p1, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    new-instance p0, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const v0, 0x11

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {p0, p1, p4}, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/Object;)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_30
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_31
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_4

    nop

    :goto_34
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {p4}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->qUqtFfGcBHjvEpXY(Landroid/support/v8/renderscript/ScriptGroup$Future;)Landroid/support/v8/renderscript/ScriptGroup$Closure;

    move-result-object v3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method

.method public constructor <init>(JLandroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/BaseObj;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 18

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static/range {v16 .. v16}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->qNcLdcwNkMbxRGzA(Ljava/util/Iterator;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v9, v0, v1, v10}, Landroid/support/v8/renderscript/BaseObj;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-array v12, v1, [J

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    move-object v6, v13

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

    :goto_6
    move-object v7, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_7
    invoke-static/range {v0 .. v6}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->xSKoWCYgjSCKJfwM(Landroid/support/v8/renderscript/RenderScript;J[B[J[J[I)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_34

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, v9, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_b
    move/from16 v2, v17

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

    :goto_c
    invoke-static/range {p4 .. p4}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->IEcEjUszRrvziSGI(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object/from16 v0, p0

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

    :goto_e
    move-object/from16 v9, p0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static/range {v16 .. v16}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->SppNYoRWMkTzLNRh(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_13
    invoke-static {v3, v10}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->efxPgatJZtjcroFx(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

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

    :goto_14
    check-cast v0, Ljava/util/Map$Entry;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_15
    move-object v4, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_16
    check-cast v3, Landroid/support/v8/renderscript/Script$FieldID;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0xe

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_18
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->zWZAiTNdhzzoTlLh(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_1a
    move-object v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1b
    aput-wide v0, v11, v17

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

    nop

    :goto_1c
    new-instance v1, Ljava/util/HashMap;

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_1d
    iget-object v0, v9, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mFP:Landroid/support/v8/renderscript/FieldPacker;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static/range {p3 .. p3}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->XPxOzugkKnKwPLxd([Ljava/lang/Object;)Landroid/support/v8/renderscript/FieldPacker;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static/range {p4 .. p4}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->uHMWwjAdOlApxjEc(Ljava/util/Map;)I

    move-result v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v0, v10}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->HRcrUpXguMpZHckX(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    move-object/from16 v0, p4

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static/range {v0 .. v8}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->MVKvQwzFWaCFMyHk(Landroid/support/v8/renderscript/ScriptGroup$Closure;Landroid/support/v8/renderscript/RenderScript;ILandroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move-object/from16 v0, p3

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

    :goto_24
    iput-object v1, v9, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

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

    nop

    :goto_25
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->MboElBJBeUAdJepz(Landroid/support/v8/renderscript/FieldPacker;)[B

    move-result-object v3

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_26
    new-array v13, v1, [I

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_27
    new-array v11, v1, [J

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_28
    move-object v8, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move-object v5, v12

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_2c
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput-object v0, v9, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mFP:Landroid/support/v8/renderscript/FieldPacker;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2e
    move-object/from16 v0, p2

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

    :goto_2f
    move-object v5, v12

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_30
    move-object/from16 v10, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_31
    const v1, 0x15

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

    :goto_32
    move-object v6, v13

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

    nop

    :goto_33
    move/from16 v17, v0

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_35
    new-array v14, v1, [J

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_36
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->fxlVPKSlHLqAkxfT(Ljava/util/Set;)Ljava/util/Iterator;

    move-result-object v16

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_37
    const-wide/16 v0, 0x0

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

    :goto_38
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2a

    nop

    :cond_0
    goto/32 :goto_29

    nop

    :goto_39
    if-nez v0, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {v9, v0, v1}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->ZsqGOmTDyEghetoz(Landroid/support/v8/renderscript/BaseObj;J)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3b
    move-object/from16 v1, p1

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

    :goto_3c
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->CEnHgrRhrkFSKaTj(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3d
    add-int/lit8 v17, v17, 0x1

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

    :goto_3e
    iput-object v0, v9, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    new-array v15, v1, [J

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_40
    move-object/from16 v0, p1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 21

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_0
    move-object/from16 v5, v19

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

    :goto_1
    add-int/lit8 v4, v17, 0x1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_2
    add-int/lit8 v17, v17, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    move/from16 v2, v17

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_4
    move-object/from16 v1, p1

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

    :goto_5
    move v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static/range {v10 .. v19}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mGfwOndbqWIdackH(Landroid/support/v8/renderscript/RenderScript;JJ[J[J[I[J[J)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v14, v9, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0, v10}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->hhuAExYgpeCaucmW(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v13

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_b
    move-object v6, v7

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object/from16 v6, v20

    nop

    nop

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

    :goto_d
    move-object/from16 v20, v7

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

    :goto_e
    check-cast v0, Ljava/util/Map$Entry;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move v4, v0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object/from16 v18, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1c

    nop

    nop

    :goto_15
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_16
    new-array v15, v0, [J

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

    nop

    nop

    :goto_17
    move-object/from16 v8, v19

    nop

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

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move-object/from16 v18, v6

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1b
    move-object/from16 v16, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_1c
    move-object/from16 v9, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v3, v10}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->XBPyhLKtgcIVOUCs(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_1e
    move-object/from16 v7, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1f
    move-object/from16 v10, p1

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    move-object/from16 v6, v18

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

    :goto_22
    move-object/from16 v19, v5

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_23
    invoke-static {v11}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->pwIWATmUykYzzUnt(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_24
    new-array v5, v0, [J

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_26
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move-object/from16 v20, v7

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v3, Landroid/support/v8/renderscript/Script$FieldID;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_29
    iput-object v0, v9, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/support/v8/renderscript/Allocation;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, v9, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/support/v8/renderscript/Allocation;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2b
    move-object/from16 v17, v20

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    move-object/from16 v19, v5

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_2d
    move-object/from16 v0, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_2e
    new-array v7, v0, [I

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_2f
    if-lt v4, v0, :cond_0

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_57

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->BzHFkwqVaGHjpGHQ(Ljava/util/Set;)Ljava/util/Iterator;

    move-result-object v11

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_33
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move-object/from16 v7, v18

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_35
    aget-object v16, v11, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_36
    move-object/from16 v0, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_14

    nop

    nop

    :goto_38
    move/from16 v17, v4

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_39
    new-array v8, v0, [J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_3a
    invoke-direct {v9, v12, v13, v10}, Landroid/support/v8/renderscript/BaseObj;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_3b
    move-object/from16 v7, v20

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_2
    goto/32 :goto_13

    nop

    :goto_3d
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {v10, v0}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->XbwrOtwKQiIdPVKS(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_3f
    move-object/from16 v8, v16

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_40
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->vmRZqcyDPnNGrLoF(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    move-object/from16 v4, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_43
    array-length v0, v11

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_44
    invoke-static/range {p5 .. p5}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->RxtZeIdmfnIgzdxj(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_45
    move-object/from16 v14, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_46
    const-wide/16 v12, 0x0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {v9, v0, v1}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mhQEhaFCiwRjZnDH(Landroid/support/v8/renderscript/BaseObj;J)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    move-object/from16 v11, p4

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iput-object v11, v9, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

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

    :goto_4a
    goto/16 :goto_11

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mMdvFjiqKaDhsMkw(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_4d
    move-object v5, v8

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    move/from16 v17, v4

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

    :goto_50
    invoke-static/range {v0 .. v8}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->XPGcwKPaxzmoXrxA(Landroid/support/v8/renderscript/ScriptGroup$Closure;Landroid/support/v8/renderscript/RenderScript;ILandroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    goto/32 :goto_1

    nop

    nop

    :goto_51
    invoke-static {v11}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->GSpPfzbjoZSqzdwB(Ljava/util/Iterator;)Z

    move-result v0

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

    :goto_52
    move-object v3, v0

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_53
    invoke-static/range {v0 .. v8}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->zaOriHFVDzosheKh(Landroid/support/v8/renderscript/ScriptGroup$Closure;Landroid/support/v8/renderscript/RenderScript;ILandroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    array-length v0, v11

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_55
    new-array v6, v0, [J

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_56
    invoke-static/range {p5 .. p5}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->kDahDtVNzLbelgan(Ljava/util/Map;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_57
    aput-wide v12, v15, v4

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_59
    invoke-static {v0, v10}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->WVGbPnhWCQjDTjlI(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v11

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_5a
    move-object/from16 v16, v8

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_5b
    add-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    move-object/from16 v8, v19

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_5e
    move-object/from16 v10, p1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    aput-wide v0, v15, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_60
    move-object/from16 v5, v16

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

    :goto_61
    iput-object v0, v9, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop
.end method

.method public static AAusVlYSIUcFxnEV(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_1
    return-object v0

    nop
.end method

.method public static BzHFkwqVaGHjpGHQ(Ljava/util/Set;)Ljava/util/Iterator;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static CEnHgrRhrkFSKaTj(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static EJOeJcCkroPILELD(Landroid/support/v8/renderscript/RenderScript;JIJI)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p6}, Landroid/support/v8/renderscript/RenderScript;->nClosureSetArg(JIJI)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static FecbrZYguhMDMjsf(Landroid/support/v8/renderscript/ScriptGroup$Future;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static GSpPfzbjoZSqzdwB(Ljava/util/Iterator;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static HRcrUpXguMpZHckX(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    return-wide v0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    const v0, 0xe

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

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop
.end method

.method public static IEcEjUszRrvziSGI(Ljava/util/Map;)Ljava/util/Set;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static MVKvQwzFWaCFMyHk(Landroid/support/v8/renderscript/ScriptGroup$Closure;Landroid/support/v8/renderscript/RenderScript;ILandroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct/range {p0 .. p8}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->9de66bcc7845262e500cb935a06a5476m(Landroid/support/v8/renderscript/RenderScript;ILandroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static MboElBJBeUAdJepz(Landroid/support/v8/renderscript/FieldPacker;)[B
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static OUzIJruCaqdzFKQc(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static PqNIaedkKtFPMnZe(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-wide v0

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    :goto_8
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

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public static RwZGzGsgBRnteewA(Landroid/support/v8/renderscript/ScriptGroup$Future;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static RxtZeIdmfnIgzdxj(Ljava/util/Map;)Ljava/util/Set;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static SppNYoRWMkTzLNRh(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static VKiPHTdCCrimHpEb(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_3
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public static VUQYJaalmIyhZAND(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_6
    const v0, 0x11

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

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

    nop
.end method

.method public static VWQgOSEkFgbOPLVq(Landroid/support/v8/renderscript/ScriptGroup$Input;Landroid/support/v8/renderscript/ScriptGroup$Closure;Landroid/support/v8/renderscript/Script$FieldID;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptGroup$Input;->addReference(Landroid/support/v8/renderscript/ScriptGroup$Closure;Landroid/support/v8/renderscript/Script$FieldID;)V

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
.end method

.method public static WVGbPnhWCQjDTjlI(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_1
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xc

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

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    goto/32 :goto_3

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static WuxOICqTUzBbYLMe(Landroid/support/v8/renderscript/ScriptGroup$Future;)Landroid/support/v8/renderscript/Script$FieldID;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptGroup$Future;->getFieldID()Landroid/support/v8/renderscript/Script$FieldID;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method public static XBPyhLKtgcIVOUCs(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    return-wide v0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_5
    const v0, 0x14

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
    goto/32 :goto_a

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static XPGcwKPaxzmoXrxA(Landroid/support/v8/renderscript/ScriptGroup$Closure;Landroid/support/v8/renderscript/RenderScript;ILandroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct/range {p0 .. p8}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->9de66bcc7845262e500cb935a06a5476m(Landroid/support/v8/renderscript/RenderScript;ILandroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

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
.end method

.method public static XPxOzugkKnKwPLxd([Ljava/lang/Object;)Landroid/support/v8/renderscript/FieldPacker;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static/range {p0 .. p0}, Landroid/support/v8/renderscript/FieldPacker;->createFromArray([Ljava/lang/Object;)Landroid/support/v8/renderscript/FieldPacker;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public static XbwrOtwKQiIdPVKS(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

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

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static XvhnpVKirAjElduL(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static ZsqGOmTDyEghetoz(Landroid/support/v8/renderscript/BaseObj;J)V
    .locals 0

    goto/32 :goto_1

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
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/BaseObj;->setID(J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static aVTugbyuBGpFQQIs(Landroid/support/v8/renderscript/ScriptGroup$Future;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object v0

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

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public static dAJeXrgLBLVcDfwJ(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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
.end method

.method public static efxPgatJZtjcroFx(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    :goto_2
    return-wide v0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    :goto_4
    const v0, 0x12

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

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_6
    const v1, 0x20

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

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

    :goto_8
    goto/32 :goto_1

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public static fxRpKvpLnAbiNdyi(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_4

    nop

    nop

    :goto_0
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0xa

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_8
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static fxlVPKSlHLqAkxfT(Ljava/util/Set;)Ljava/util/Iterator;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public static hhuAExYgpeCaucmW(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x11

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
.end method

.method public static kDahDtVNzLbelgan(Ljava/util/Map;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->size()I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public static kbDLnbTMxfrdJVcV(Landroid/support/v8/renderscript/ScriptGroup$Input;Landroid/support/v8/renderscript/ScriptGroup$Closure;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptGroup$Input;->addReference(Landroid/support/v8/renderscript/ScriptGroup$Closure;I)V

    goto/32 :goto_1

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
.end method

.method public static mGfwOndbqWIdackH(Landroid/support/v8/renderscript/RenderScript;JJ[J[J[I[J[J)J
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    :goto_3
    const v0, 0x1a

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
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    return-wide v0

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_8
    rem-int v0, v0, v1

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

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual/range {p0 .. p9}, Landroid/support/v8/renderscript/RenderScript;->nClosureCreate(JJ[J[J[I[J[J)J

    move-result-wide v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public static mMdvFjiqKaDhsMkw(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static mhQEhaFCiwRjZnDH(Landroid/support/v8/renderscript/BaseObj;J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/BaseObj;->setID(J)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static osiORweWOauDvMRc(Landroid/support/v8/renderscript/ScriptGroup$Future;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object v0

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

.method public static pwIWATmUykYzzUnt(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public static qNcLdcwNkMbxRGzA(Ljava/util/Iterator;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

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

.method public static qUqtFfGcBHjvEpXY(Landroid/support/v8/renderscript/ScriptGroup$Future;)Landroid/support/v8/renderscript/ScriptGroup$Closure;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptGroup$Future;->getClosure()Landroid/support/v8/renderscript/ScriptGroup$Closure;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static rrAZHnXwTowKfBGE(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

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

    :goto_4
    goto/32 :goto_6

    nop

    nop

    :goto_5
    goto/32 :goto_9

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

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public static uHMWwjAdOlApxjEc(Ljava/util/Map;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->size()I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static vmRZqcyDPnNGrLoF(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static xSKoWCYgjSCKJfwM(Landroid/support/v8/renderscript/RenderScript;J[B[J[J[I)J
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_1
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    const v1, 0x1e

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

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-wide v0

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
    invoke-virtual/range {p0 .. p6}, Landroid/support/v8/renderscript/RenderScript;->nInvokeClosureCreate(J[B[J[J[I)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public static yAnZGeQrmIguKMNo(Landroid/support/v8/renderscript/RenderScript;JJJI)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/RenderScript;->nClosureSetGlobal(JJJI)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static zWZAiTNdhzzoTlLh(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method public static zaOriHFVDzosheKh(Landroid/support/v8/renderscript/ScriptGroup$Closure;Landroid/support/v8/renderscript/RenderScript;ILandroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct/range {p0 .. p8}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->9de66bcc7845262e500cb935a06a5476m(Landroid/support/v8/renderscript/RenderScript;ILandroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public getGlobal(Landroid/support/v8/renderscript/Script$FieldID;)Landroid/support/v8/renderscript/ScriptGroup$Future;
    .locals 2

    goto/32 :goto_19

    nop

    nop

    :goto_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move-object v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v1, Landroid/support/v8/renderscript/ScriptGroup$Future;

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

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    invoke-direct {v1, p0, p1, v0}, Landroid/support/v8/renderscript/ScriptGroup$Future;-><init>(Landroid/support/v8/renderscript/ScriptGroup$Closure;Landroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_a
    iget-object p0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    instance-of v1, v0, Landroid/support/v8/renderscript/ScriptGroup$Future;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v0, Landroid/support/v8/renderscript/ScriptGroup$Future;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    :goto_10
    invoke-static {v0, p1}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->XvhnpVKirAjElduL(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    :goto_14
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->osiORweWOauDvMRc(Landroid/support/v8/renderscript/ScriptGroup$Future;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    :goto_16
    if-eqz v0, :cond_2

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

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v0, Landroid/support/v8/renderscript/ScriptGroup$Future;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p0, p1, v1}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->OUzIJruCaqdzFKQc(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_19
    const v0, 0x6

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

    nop

    :goto_1a
    invoke-static {v0, p1}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->dAJeXrgLBLVcDfwJ(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public getReturn()Landroid/support/v8/renderscript/ScriptGroup$Future;
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/support/v8/renderscript/Allocation;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x5

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

    :goto_2
    return-object p0

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/support/v8/renderscript/ScriptGroup$Future;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, p0, v1, v2}, Landroid/support/v8/renderscript/ScriptGroup$Future;-><init>(Landroid/support/v8/renderscript/ScriptGroup$Closure;Landroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x0

    nop

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

    :goto_c
    new-instance v0, Landroid/support/v8/renderscript/ScriptGroup$Future;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/support/v8/renderscript/ScriptGroup$Future;

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/support/v8/renderscript/ScriptGroup$Future;

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

    :goto_12
    goto/32 :goto_a

    nop
.end method

.method public setArg(ILjava/lang/Object;)V
    .locals 9

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_0
    move v5, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    invoke-static {p2}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->FecbrZYguhMDMjsf(Landroid/support/v8/renderscript/ScriptGroup$Future;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, v2}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->rrAZHnXwTowKfBGE(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

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
    iget-wide v6, v0, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, v1, p2}, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    instance-of v0, p2, Landroid/support/v8/renderscript/ScriptGroup$Future;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_16

    nop

    nop

    :goto_a
    const v1, 0x16

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_c
    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->EJOeJcCkroPILELD(Landroid/support/v8/renderscript/RenderScript;JIJI)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p2, Landroid/support/v8/renderscript/ScriptGroup$Future;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    aput-object p2, v0, p1

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

    :goto_11
    new-instance v0, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

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

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_16
    goto/32 :goto_13

    nop

    nop

    :goto_17
    iget v8, v0, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_18
    const v0, 0x16

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method public setGlobal(Landroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;)V
    .locals 10

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    :goto_4
    instance-of v0, p2, Landroid/support/v8/renderscript/ScriptGroup$Future;

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

    nop

    :goto_5
    invoke-static {v0, p1, p2}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->AAusVlYSIUcFxnEV(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p2}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->aVTugbyuBGpFQQIs(Landroid/support/v8/renderscript/ScriptGroup$Future;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    :goto_8
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    invoke-static {p0, v2}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->PqNIaedkKtFPMnZe(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p1, p0}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->VKiPHTdCCrimHpEb(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v5

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    invoke-static/range {v2 .. v9}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->yAnZGeQrmIguKMNo(Landroid/support/v8/renderscript/RenderScript;JJJI)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x14

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-wide v7, v0, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_11
    check-cast p2, Landroid/support/v8/renderscript/ScriptGroup$Future;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    :goto_13
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_14
    goto/32 :goto_e

    nop

    nop

    :goto_15
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_18
    iget v9, v0, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_19
    goto/32 :goto_15

    nop

    :goto_1a
    invoke-direct {v0, v1, p2}, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/Object;)V

    goto/32 :goto_13

    nop

    nop

    nop
.end method
