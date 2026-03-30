.class public Landroid/support/v8/renderscript/FieldPacker;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private mAlignment:Ljava/util/BitSet;

.field private mData:[B

.field private mLen:I

.field private mPos:I


# direct methods
.method private 38c54f59c13e58515dbbf633a1b3d3cdm(I)Z
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

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

    goto/32 :goto_8

    nop

    nop

    :goto_3
    iget v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mLen:I

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
    iget-object v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    if-eq p1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    :goto_6
    const v1, 0x4

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v2, v1, v0, v1, v3}, Landroid/support/v8/renderscript/FieldPacker;->qHdmuUEBtcMIkadg(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_9
    new-array v0, p1, [B

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

    nop

    :goto_a
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

    :goto_b
    goto/32 :goto_e

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12
    return v1

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_c

    nop

    nop

    :goto_15
    iput p1, p0, Landroid/support/v8/renderscript/FieldPacker;->mLen:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method

.method public constructor <init>(I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_9

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
    iput p1, p0, Landroid/support/v8/renderscript/FieldPacker;->mLen:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p1, Ljava/util/BitSet;

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
    iput-object p1, p0, Landroid/support/v8/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

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

    :goto_7
    iput-object p1, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-array p1, p1, [B

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    iput v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>([B)V
    .locals 1

    goto/32 :goto_6

    nop

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
    iput v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mLen:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

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

    :goto_5
    iput-object p1, p0, Landroid/support/v8/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    new-instance p1, Ljava/util/BitSet;

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

    :goto_8
    array-length v0, p1

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

    nop
.end method

.method public static ALXNfTIYglKIgMDm(Landroid/support/v8/renderscript/FieldPacker;I)V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static AYwxAZoVeLtufCKq(Landroid/support/v8/renderscript/FieldPacker;S)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

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

.method public static AnGHOwwlVDxybTrU(Landroid/support/v8/renderscript/FieldPacker;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI32()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static AuRWBVIiSjdluFPC(Landroid/support/v8/renderscript/FieldPacker;)B
    .locals 1

    goto/32 :goto_1

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
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI8()B

    move-result v0

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

.method public static BCsOXbNSYIQKKCzO(Landroid/support/v8/renderscript/FieldPacker;)I
    .locals 1

    goto/32 :goto_1

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
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI32()I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static BQOzFgLckyIOOxDy(Landroid/support/v8/renderscript/FieldPacker;)B
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI8()B

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method public static BXAmaYGUMqhkKToh(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Short3;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI16(Landroid/support/v8/renderscript/Short3;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static BgjquZYsHSLsjtDS(Landroid/support/v8/renderscript/FieldPacker;S)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    goto/32 :goto_1

    nop

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

.method public static CDcjVcVlSywSicTl(Landroid/support/v8/renderscript/FieldPacker;B)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static CLtumVggYxxInUOJ(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static CODoyjhckYBJVBPt(Landroid/support/v8/renderscript/FieldPacker;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static COlMJQHwiWwtQrGj(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

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

.method public static CTheDRUUdlyJaABr(Ljava/lang/Byte;)B
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

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

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

.method public static DJoWlVxYuxuPpHZb(Landroid/support/v8/renderscript/FieldPacker;D)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static DLKorcuHMvjDDxYV(F)I
    .locals 1

    goto/32 :goto_1

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

    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

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

.method public static DcxcMsgoCpjqxSvZ(Ljava/lang/Double;)D
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    goto/32 :goto_6

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_9
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public static DrROFQLIYnWGhnBh(Landroid/support/v8/renderscript/FieldPacker;)B
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI8()B

    move-result v0

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
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static EHAkHnRDsKmNSkxn(Landroid/support/v8/renderscript/FieldPacker;)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF32()F

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static EJXvQgQpuLCprYgd(Landroid/support/v8/renderscript/FieldPacker;)B
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI8()B

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop
.end method

.method public static EbRWFrDkQaKfgXiu(Landroid/support/v8/renderscript/FieldPacker;)D
    .locals 2

    goto/32 :goto_3

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const v0, 0x1a

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

    nop

    nop

    :goto_4
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

    :goto_5
    goto/32 :goto_2

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

    nop

    :goto_7
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

    :goto_8
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF64()D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    const v1, 0x14

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public static EchModvmVqEDLazJ(Landroid/support/v8/renderscript/FieldPacker;)S
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI16()S

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static EobHZZEHKMHLCRVS(Landroid/support/v8/renderscript/FieldPacker;I)V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static FBInHxqyAdFGyHjH(Landroid/support/v8/renderscript/FieldPacker;)F
    .locals 1

    goto/32 :goto_1

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
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF32()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static FDtYGcoSfIvOYaeJ(Landroid/support/v8/renderscript/FieldPacker;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

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

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static FDxFSqLYTbnHwnMn(Landroid/support/v8/renderscript/FieldPacker;S)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static FExrMAQqaFOpQyzz(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_1

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
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static FGaYlOzoORHYhvlJ(Landroid/support/v8/renderscript/FieldPacker;F)V
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

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static FGpmkehpRRIHmhoq(Landroid/support/v8/renderscript/FieldPacker;F)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

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

.method public static FHQetESgUacptfKK(Landroid/support/v8/renderscript/FieldPacker;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static FIECOQrJEhGYbeCu(Landroid/support/v8/renderscript/FieldPacker;)S
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

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI16()S

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static FRqIdbnPDKWmbxnA(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static FhkTcwjLwqkjLlNQ(Landroid/support/v8/renderscript/FieldPacker;F)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

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

.method public static FihqKFpGMwlXxmsJ(Landroid/support/v8/renderscript/FieldPacker;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static FzEzAUJYvWGlVmHe(Landroid/support/v8/renderscript/FieldPacker;)B
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
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI8()B

    move-result v0

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

.method public static GKPxcRMyLRYziHZn(Landroid/support/v8/renderscript/FieldPacker;)S
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI16()S

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static GTTfYmGrbOlsOlFn(Landroid/support/v8/renderscript/FieldPacker;F)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

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

.method public static GcwjwgisQYmcMJYe(Landroid/support/v8/renderscript/FieldPacker;)D
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x15

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

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-wide v0

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
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

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF64()D

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
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

    nop

    :cond_0
    goto/32 :goto_1

    nop
.end method

.method public static GfWfKYkORxCOqSmm(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static GzQzxSOYiZApwCGH(Landroid/support/v8/renderscript/FieldPacker;I)V
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
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->subalign(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static GzereNCJnUGlgLeU(Landroid/support/v8/renderscript/FieldPacker;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI32()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static HAOMtWDGyioRynSw(Landroid/support/v8/renderscript/FieldPacker;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

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

    nop

    nop
.end method

.method public static HCxfxIlPFksFaQFP(Landroid/support/v8/renderscript/FieldPacker;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static HsDUvEqCpNAkhknM(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Long2;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(Landroid/support/v8/renderscript/Long2;)V

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
.end method

.method public static ILGdNzORoWjCksSE(Landroid/support/v8/renderscript/FieldPacker;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto/32 :goto_1

    nop

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

.method public static IPYKRhsoqmvzyUcu(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

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
.end method

.method public static ISqoWroYEuKuuWto(Landroid/support/v8/renderscript/FieldPacker;)S
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI16()S

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static IfmthoynkrJlCiVG(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    nop

    nop
.end method

.method public static IgBQRJEUiftFsnaD(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

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
.end method

.method public static JEkRdOGgMJFRkUwA(Landroid/support/v8/renderscript/FieldPacker;)S
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI16()S

    move-result v0

    nop

    nop

    nop

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

.method public static JScCRMPWLfLTCJtb(Landroid/support/v8/renderscript/FieldPacker;S)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static JwKHoKRQOYkUkPkL(Landroid/support/v8/renderscript/FieldPacker;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF32()F

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop
.end method

.method public static JyooHGdHnvynQcRN(Landroid/support/v8/renderscript/FieldPacker;S)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

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

.method public static KBjKhYthXJgcNTLk(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static KGGGWKIJLoFBgvXg(Landroid/support/v8/renderscript/FieldPacker;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static KKmdaunwLHZSSqmI(Landroid/support/v8/renderscript/FieldPacker;)B
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI8()B

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method public static KWVCjHbsDvXauktw(Landroid/support/v8/renderscript/FieldPacker;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

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

    nop

    nop

    nop
.end method

.method public static KciAENPmqZPMbOGw(ILjava/lang/String;)Ljava/lang/String;
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
    invoke-static {p0, p1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static KgkEMbaOvJDfWDGx(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static KqrMrGZydlqCLvtT(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Int4;)V
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

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI32(Landroid/support/v8/renderscript/Int4;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static LCboVKbLjLdsJXal(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Matrix2f;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addMatrix(Landroid/support/v8/renderscript/Matrix2f;)V

    goto/32 :goto_1

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

.method public static LLJluFeZEEVVJeEt(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Float2;)V
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

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(Landroid/support/v8/renderscript/Float2;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static LoewOfPruORYqzry(Ljava/lang/Short;)S
    .locals 1

    goto/32 :goto_1

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
    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result v0

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

.method public static LsHgbglfrPsaamZH(Landroid/support/v8/renderscript/FieldPacker;)B
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI8()B

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static MHuAbHMjpiTulpmM(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    goto/32 :goto_1

    nop

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

.method public static MNqbNmLygqgGuyiS(Landroid/support/v8/renderscript/FieldPacker;J)V
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
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static MkYfrUikhdQKwCMH(Landroid/support/v8/renderscript/FieldPacker;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static MlAvlanREYEzpNqq(Landroid/support/v8/renderscript/FieldPacker;)J
    .locals 2

    goto/32 :goto_7

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

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    const v1, 0xb

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

    :goto_2
    goto/32 :goto_6

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI64()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    return-wide v0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public static MwoTYSdgpvYUXYAG(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Long4;)V
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
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(Landroid/support/v8/renderscript/Long4;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static NClALfNVNIIKYxZl(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Double2;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(Landroid/support/v8/renderscript/Double2;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static NHrSrzacYjWFrXwF(Landroid/support/v8/renderscript/FieldPacker;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static NSQdPvyChDcVzSZn(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/BaseObj;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addObj(Landroid/support/v8/renderscript/BaseObj;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static NSoyzWuXsajjUOzc(Landroid/support/v8/renderscript/FieldPacker;S)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    goto/32 :goto_1

    nop

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

.method public static OzGgaZNxOszgqmXf(Landroid/support/v8/renderscript/FieldPacker;S)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

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
.end method

.method public static PBFqRhDrOVuMuqWb(Landroid/support/v8/renderscript/FieldPacker;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    goto/32 :goto_1

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

.method public static PVTkRQMCMcvkskMh(Landroid/support/v8/renderscript/FieldPacker;B)V
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
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static PbgiFuEHQOHsYzgv(Landroid/support/v8/renderscript/FieldPacker;S)V
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
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static PcWPgNbeTiBksJtF(Landroid/support/v8/renderscript/FieldPacker;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI32()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method public static PfwSdtnWVAwWyJvB(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

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

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public static PiYUDZeSIVjMwfIY(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static QLfVJIvEGyZTHzJA(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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
    invoke-static {p0, p1, p2, p3}, Lmf;->b(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static QTnUfDpRtFsSzFGA(Landroid/support/v8/renderscript/FieldPacker;B)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static QetAiPWHkfODAgis(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static RKydLiafhKjvevTP(Landroid/support/v8/renderscript/FieldPacker;F)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static RPkcamqMAelMRaYF(Landroid/support/v8/renderscript/FieldPacker;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static RTjXhmXzWHaNvEqe(Landroid/support/v8/renderscript/FieldPacker;D)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static RTwcGgAhNImsDggR(Landroid/support/v8/renderscript/FieldPacker;F)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static RrSWmfUAklFlnJRb(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static RxZMXXIkuzDqQWIJ(J)D
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x17

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-wide v0

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

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

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    :goto_8
    goto/32 :goto_4

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

    nop

    :goto_a
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_7

    nop
.end method

.method public static SGMGcdKhzilfHsuO(Landroid/support/v8/renderscript/FieldPacker;)S
    .locals 1

    goto/32 :goto_1

    nop

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

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI16()S

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

.method public static SVufLHEfJTJaSPHv(Landroid/support/v8/renderscript/FieldPacker;)J
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    return-wide v0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI64()J

    move-result-wide v0

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
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_0

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

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_3

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
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public static SeYVTflUPyHIoAHt(Landroid/support/v8/renderscript/FieldPacker;)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF32()F

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static TNKuvoJHWzUKkLJe(Landroid/support/v8/renderscript/FieldPacker;D)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static TWCrwGKIdWFJMcya(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static TcBqCNhszlngnlVN(Landroid/support/v8/renderscript/FieldPacker;)J
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_7
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI64()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop
.end method

.method public static UEXOLYttKsvmcGqt(Landroid/support/v8/renderscript/FieldPacker;B)V
    .locals 0

    goto/32 :goto_1

    nop

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
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static UlxhVgQbHPufMjaT(Landroid/support/v8/renderscript/FieldPacker;S)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static VfInlpnnIvFAcCwI(Landroid/support/v8/renderscript/FieldPacker;F)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static VnLqoxpfSfiNgpjW(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Byte4;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI8(Landroid/support/v8/renderscript/Byte4;)V

    goto/32 :goto_1

    nop

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

.method public static VperaQWEsSkPzkIL(Landroid/support/v8/renderscript/FieldPacker;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static VtjUGJBDRgIuzhXv(Landroid/support/v8/renderscript/FieldPacker;B)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    goto/32 :goto_1

    nop

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

.method public static VzNTrqXXVzQAuIwh(Landroid/support/v8/renderscript/FieldPacker;D)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static WCMYrDaIKUuilxdK(I)F
    .locals 1

    goto/32 :goto_1

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
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

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

    nop
.end method

.method public static WDXShAnXrjTVWrTR(Landroid/support/v8/renderscript/FieldPacker;F)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static WQmjhlCCpxOwWWYT(Landroid/support/v8/renderscript/FieldPacker;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    goto/32 :goto_1

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

.method public static WmffpWBmPTQKlkdG(Landroid/support/v8/renderscript/FieldPacker;)J
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xf

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

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

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

    :goto_3
    return-wide v0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x10

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

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI64()J

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

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop
.end method

.method public static XCzsXrVObzJscJmB(Landroid/support/v8/renderscript/FieldPacker;S)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static XDBgOeNfFQNJFyfu(Landroid/support/v8/renderscript/FieldPacker;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

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
.end method

.method public static XDXBIXsrWgdYTBUH(Landroid/support/v8/renderscript/FieldPacker;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto/32 :goto_1

    nop

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

.method public static XMzBxLKKXgbMQYOp(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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
    invoke-static {p0, p1, p2}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static XUFQIHqVmExDNIsP(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop
.end method

.method public static YZyumeRgUcQINeca(Landroid/support/v8/renderscript/FieldPacker;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF32()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop
.end method

.method public static YrtxrLRWntlsxRxF(Landroid/support/v8/renderscript/FieldPacker;S)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

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

    nop

    nop

    nop
.end method

.method public static YyduzyiPQHqmUzoH(Landroid/support/v8/renderscript/FieldPacker;B)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

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
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ZXVPVEnVFaKvdOCi(Landroid/support/v8/renderscript/FieldPacker;)J
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    return-wide v0

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_4
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI64()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    const v0, 0x5

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

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    :goto_9
    goto/32 :goto_4

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

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public static ZXuptFvJXDRMDifF(Landroid/support/v8/renderscript/FieldPacker;)I
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

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI32()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static ZizImgQQBwvulsnk(Landroid/support/v8/renderscript/FieldPacker;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

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
.end method

.method public static ZprftbIbDuXMRBqe(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Byte2;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI8(Landroid/support/v8/renderscript/Byte2;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static ZsqgxGXtNBetSgSV(Landroid/support/v8/renderscript/FieldPacker;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

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

    nop
.end method

.method public static ZwWfzYGYZbMbuNuM(Landroid/support/v8/renderscript/FieldPacker;J)V
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
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static aPrHPzUjCljnNTVM(Landroid/support/v8/renderscript/FieldPacker;J)V
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

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static aQyhbzKdZmvQVUJu(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static aRPajNsZqgbGLGvX(Landroid/support/v8/renderscript/FieldPacker;I)V
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

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method private static addToPack(Landroid/support/v8/renderscript/FieldPacker;Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_1e

    nop

    nop

    :goto_0
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_1
    invoke-static {p1}, Landroid/support/v8/renderscript/FieldPacker;->DcxcMsgoCpjqxSvZ(Ljava/lang/Double;)D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_4
    instance-of v0, p1, Ljava/lang/Byte;

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    nop

    :goto_8
    goto/32 :goto_82

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p1, Landroid/support/v8/renderscript/Double4;

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

    nop

    nop

    :goto_b
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->xKexvauhgKKCXlGS(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Float3;)V

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->RTjXhmXzWHaNvEqe(Landroid/support/v8/renderscript/FieldPacker;D)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p1, Ljava/lang/Byte;

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    instance-of v0, p1, Landroid/support/v8/renderscript/Byte2;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_3
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_11
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->yHiVAACEfJzhTfKg(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Float4;)V

    goto/32 :goto_99

    nop

    nop

    :goto_12
    check-cast p1, Landroid/support/v8/renderscript/Short3;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_15
    check-cast p1, Landroid/support/v8/renderscript/BaseObj;

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->mVDPdIonoDKAjAyO(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Short4;)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_18
    check-cast p1, Landroid/support/v8/renderscript/Float4;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_19
    instance-of v0, p1, Landroid/support/v8/renderscript/Double4;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_98

    nop

    nop

    :goto_1e
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->NClALfNVNIIKYxZl(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Double2;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p1}, Landroid/support/v8/renderscript/FieldPacker;->LoewOfPruORYqzry(Ljava/lang/Short;)S

    move-result p1

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_21
    instance-of v0, p1, Landroid/support/v8/renderscript/Double3;

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

    :goto_22
    check-cast p1, Landroid/support/v8/renderscript/Long4;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast p1, Landroid/support/v8/renderscript/Long3;

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->sAKgAhkoWEpwRgcq(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Int2;)V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_28
    instance-of v0, p1, Landroid/support/v8/renderscript/Double2;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_29
    check-cast p1, Landroid/support/v8/renderscript/Byte4;

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_2a
    check-cast p1, Landroid/support/v8/renderscript/Int3;

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

    nop

    nop

    :goto_2b
    if-nez v0, :cond_5

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

    :cond_5
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v0, :cond_6

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_2e
    instance-of v0, p1, Landroid/support/v8/renderscript/Matrix3f;

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    return-void

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_89

    nop

    nop

    nop

    :goto_31
    instance-of v0, p1, Landroid/support/v8/renderscript/Int4;

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_32
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_33
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :cond_8
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->dvdLLRFCUWQCTfhW(Landroid/support/v8/renderscript/FieldPacker;B)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->ehXEuQwrPVotmjrX(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Double4;)V

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_36
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    return-void

    nop

    nop

    :goto_39
    goto/32 :goto_bd

    nop

    nop

    :goto_3a
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->nNPWKgowZjYdaOdi(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Byte3;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    :cond_9
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    instance-of v0, p1, Landroid/support/v8/renderscript/Byte4;

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_3d
    instance-of v0, p1, Landroid/support/v8/renderscript/Short2;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_3e
    if-nez v0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    :cond_a
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_3f
    instance-of v0, p1, Landroid/support/v8/renderscript/Short3;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {p1}, Landroid/support/v8/renderscript/FieldPacker;->lutbyzJFUpDQQcWH(Ljava/lang/Long;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_41
    return-void

    nop

    nop

    :goto_42
    goto/32 :goto_3c

    nop

    nop

    :goto_43
    if-nez v0, :cond_b

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_44
    instance-of v0, p1, Landroid/support/v8/renderscript/Short4;

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_45
    check-cast p1, Landroid/support/v8/renderscript/Short2;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    check-cast p1, Ljava/lang/Integer;

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

    :goto_47
    return-void

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_49
    instance-of v0, p1, Landroid/support/v8/renderscript/Float4;

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    return-void

    nop

    :goto_4b
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->izKmyASTDosnFnvP(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Short2;)V

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->BXAmaYGUMqhkKToh(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Short3;)V

    goto/32 :goto_26

    nop

    nop

    :goto_50
    return-void

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_52
    return-void

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-nez v0, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_76

    nop

    nop

    :goto_55
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->MwoTYSdgpvYUXYAG(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Long4;)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_56
    instance-of v0, p1, Landroid/support/v8/renderscript/Float2;

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_57
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->knXDHFDpIfUrDSMb(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Matrix3f;)V

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_58
    return-void

    nop

    :goto_59
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_5a
    if-nez v0, :cond_d

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    instance-of v0, p1, Ljava/lang/Boolean;

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

    :goto_5c
    return-void

    nop

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    if-nez v0, :cond_e

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_5f
    return-void

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_61
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->LCboVKbLjLdsJXal(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Matrix2f;)V

    goto/32 :goto_7d

    nop

    nop

    :goto_62
    if-nez v0, :cond_f

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_29

    nop

    nop

    :goto_63
    instance-of v0, p1, Landroid/support/v8/renderscript/Long4;

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

    :goto_64
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->FGaYlOzoORHYhvlJ(Landroid/support/v8/renderscript/FieldPacker;F)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    check-cast p1, Landroid/support/v8/renderscript/Double2;

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

    :goto_66
    if-nez v0, :cond_10

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_67
    check-cast p1, Landroid/support/v8/renderscript/Byte2;

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_68
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->BgjquZYsHSLsjtDS(Landroid/support/v8/renderscript/FieldPacker;S)V

    goto/32 :goto_1c

    nop

    nop

    :goto_69
    check-cast p1, Landroid/support/v8/renderscript/Int4;

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_6a
    invoke-static {p1}, Landroid/support/v8/renderscript/FieldPacker;->rGxMlfJhyPISmLLl(Ljava/lang/Boolean;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_6b
    return-void

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    return-void

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    check-cast p1, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_70
    check-cast p1, Landroid/support/v8/renderscript/Int2;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_71
    return-void

    nop

    :goto_72
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_73
    const v1, 0xe

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

    :goto_74
    return-void

    nop

    nop

    :goto_75
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    check-cast p1, Landroid/support/v8/renderscript/Float3;

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

    :goto_77
    invoke-static {p1}, Landroid/support/v8/renderscript/FieldPacker;->bHykTaLeYLUHrLeb(Ljava/lang/Integer;)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->dwoHumdQubnkuWFy(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Double3;)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_79
    return-void

    nop

    :goto_7a
    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_7b
    if-nez v0, :cond_11

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->ZwWfzYGYZbMbuNuM(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_7d
    return-void

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_7f
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->HsDUvEqCpNAkhknM(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Long2;)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    check-cast p1, Landroid/support/v8/renderscript/Byte3;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    return-void

    nop

    nop

    nop

    nop

    :goto_82
    goto/32 :goto_c

    nop

    nop

    :goto_83
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->snuCnIcnyZtnpAIS(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Matrix4f;)V

    goto/32 :goto_6b

    nop

    nop

    :goto_84
    instance-of v0, p1, Ljava/lang/Double;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->VnLqoxpfSfiNgpjW(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Byte4;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_86
    if-nez v0, :cond_12

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_87
    if-nez v0, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :cond_13
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_88
    instance-of v0, p1, Landroid/support/v8/renderscript/Matrix2f;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_89
    instance-of v0, p1, Landroid/support/v8/renderscript/Long2;

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

    :goto_8a
    if-nez v0, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    :cond_14
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8b
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->NSQdPvyChDcVzSZn(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/BaseObj;)V

    :goto_8c
    goto/32 :goto_81

    nop

    nop

    nop

    :goto_8d
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->ZizImgQQBwvulsnk(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_8e
    instance-of v0, p1, Landroid/support/v8/renderscript/BaseObj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    if-nez v0, :cond_15

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_90
    check-cast p1, Ljava/lang/Double;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_91
    if-nez v0, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_92
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->bMZIbfzCnltwXSYg(Landroid/support/v8/renderscript/FieldPacker;Z)V

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    if-nez v0, :cond_17

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :cond_17
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    instance-of v0, p1, Landroid/support/v8/renderscript/Int2;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_95
    check-cast p1, Landroid/support/v8/renderscript/Long2;

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->sjhwXtMwLZPufrzm(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Long3;)V

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_97
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->KqrMrGZydlqCLvtT(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Int4;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_98
    instance-of v0, p1, Ljava/lang/Integer;

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

    :goto_99
    return-void

    nop

    nop

    nop

    :goto_9a
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->LLJluFeZEEVVJeEt(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Float2;)V

    goto/32 :goto_38

    nop

    nop

    :goto_9c
    instance-of v0, p1, Ljava/lang/Short;

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_9d
    if-nez v0, :cond_18

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

    :cond_18
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->nupaWDfYIFvtgsbM(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Int3;)V

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_9f
    return-void

    nop

    nop

    :goto_a0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a1
    instance-of v0, p1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    instance-of v0, p1, Landroid/support/v8/renderscript/Int3;

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

    :goto_a3
    return-void

    nop

    :goto_a4
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    instance-of v0, p1, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_a6
    instance-of v0, p1, Landroid/support/v8/renderscript/Long3;

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_a7
    if-nez v0, :cond_19

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_19
    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_a8
    if-nez v0, :cond_1a

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    check-cast p1, Landroid/support/v8/renderscript/Short4;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_aa
    if-lez v0, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1b
    goto/32 :goto_8

    nop

    :goto_ab
    if-nez v0, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :cond_1c
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_ac
    invoke-static {p1}, Landroid/support/v8/renderscript/FieldPacker;->CTheDRUUdlyJaABr(Ljava/lang/Byte;)B

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_ad
    instance-of v0, p1, Landroid/support/v8/renderscript/Byte3;

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    instance-of v0, p1, Landroid/support/v8/renderscript/Matrix4f;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_af
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->ZprftbIbDuXMRBqe(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Byte2;)V

    goto/32 :goto_36

    nop

    nop

    :goto_b0
    check-cast p1, Ljava/lang/Short;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    check-cast p1, Landroid/support/v8/renderscript/Float2;

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

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
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_b4
    check-cast p1, Landroid/support/v8/renderscript/Matrix3f;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_b5
    return-void

    nop

    :goto_b6
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    if-nez v0, :cond_1d

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_1d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-static {p1}, Landroid/support/v8/renderscript/FieldPacker;->uZyvIkFuQbmrPfaz(Ljava/lang/Float;)F

    move-result p1

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_b9
    check-cast p1, Landroid/support/v8/renderscript/Matrix2f;

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    check-cast p1, Landroid/support/v8/renderscript/Matrix4f;

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    check-cast p1, Landroid/support/v8/renderscript/Double3;

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_bd
    instance-of v0, p1, Landroid/support/v8/renderscript/Float3;

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop
.end method

.method public static agpwOPEnChWnLVma(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static bHykTaLeYLUHrLeb(Ljava/lang/Integer;)I
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

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static bLnbpBCzVcDBiJFE(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static bMZIbfzCnltwXSYg(Landroid/support/v8/renderscript/FieldPacker;Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addBoolean(Z)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static bXTzTqgReoPNuCSS(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static bhWMZgfskqwzKurG(Landroid/support/v8/renderscript/FieldPacker;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI32()I

    move-result v0

    nop

    nop

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

.method public static brpkxMYujAVxedbw(Landroid/support/v8/renderscript/FieldPacker;F)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static cDtKnWhJzkTIiHEW(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method public static cPNvynGrGECSCwmM(Ljava/util/BitSet;I)V
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

    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->flip(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ccyfvJdkWLbRJhrd(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

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

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static cdxpkHomHYFcJVhP(Landroid/support/v8/renderscript/FieldPacker;)J
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI64()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_7
    const v0, 0x2

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

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    return-wide v0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public static coBDDIMMqCVhXjDw(Landroid/support/v8/renderscript/FieldPacker;F)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static coHzLjTbfYvpJBwC(Landroid/support/v8/renderscript/FieldPacker;S)V
    .locals 0

    goto/32 :goto_1

    nop

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

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method static createFieldPack([Ljava/lang/Object;)Landroid/support/v8/renderscript/FieldPacker;
    .locals 5

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v2, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_2
    aget-object v4, p0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4
    move v3, v2

    nop

    :goto_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lt v1, v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v3}, Landroid/support/v8/renderscript/FieldPacker;->gZdGDJEGDHZbBCdO(Landroid/support/v8/renderscript/FieldPacker;Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    array-length v0, p0

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

    :goto_9
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    goto :goto_5

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    add-int/2addr v3, v4

    nop

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

    nop

    :goto_13
    invoke-direct {v0, v3}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v2, v2, 0x1

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

    :goto_15
    if-lt v2, v0, :cond_2

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

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v4}, Landroid/support/v8/renderscript/FieldPacker;->iBvawNNRhpVzFURo(Ljava/lang/Object;)I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_17
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_19
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

    :goto_1a
    goto/32 :goto_10

    nop

    nop

    :goto_1b
    const v0, 0x15

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1d
    aget-object v3, p0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1e
    array-length v2, p0

    nop

    nop

    :goto_1f
    goto/32 :goto_6

    nop

    nop
.end method

.method static createFromArray([Ljava/lang/Object;)Landroid/support/v8/renderscript/FieldPacker;
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_18

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0, v3}, Landroid/support/v8/renderscript/FieldPacker;->uCcYcVQmAgOWXtQJ(Landroid/support/v8/renderscript/FieldPacker;Ljava/lang/Object;)V

    goto/32 :goto_e

    nop

    nop

    :goto_9
    iget p0, v0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    array-length v1, p0

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
    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    sget v1, Landroid/support/v8/renderscript/RenderScript;->sPointerSize:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0xd

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

    :goto_11
    mul-int/lit8 v1, v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_12
    if-lt v2, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    aget-object v3, p0, v2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_14
    invoke-static {v0, p0}, Landroid/support/v8/renderscript/FieldPacker;->teZJocyXusdabNjp(Landroid/support/v8/renderscript/FieldPacker;I)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

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

    :goto_17
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method

.method public static dAWviYeccbldrNdC(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static dMDtsibYrjIZsfQI(Landroid/support/v8/renderscript/FieldPacker;I)V
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
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static dnTUQvmkyDJFgWxL(Landroid/support/v8/renderscript/FieldPacker;D)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static domwfmgsJfSrCYmN(Landroid/support/v8/renderscript/FieldPacker;B)V
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
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static dvdLLRFCUWQCTfhW(Landroid/support/v8/renderscript/FieldPacker;B)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static dwoHumdQubnkuWFy(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Double3;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(Landroid/support/v8/renderscript/Double3;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static eNBULcOLwhFYRMDx(Landroid/support/v8/renderscript/FieldPacker;B)V
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
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static eRnmYjrMFDZqKMnn(Landroid/support/v8/renderscript/FieldPacker;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF32()F

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop
.end method

.method public static ehXEuQwrPVotmjrX(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Double4;)V
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
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(Landroid/support/v8/renderscript/Double4;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static esHDJAdxAxXIXCds(Landroid/support/v8/renderscript/FieldPacker;I)V
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

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static fFqgggSkvDwRTVfk(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    goto/32 :goto_1

    nop

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
.end method

.method public static fSjlHsDQDAceUexS(Landroid/support/v8/renderscript/FieldPacker;D)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

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
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static fUeRaLXWdoMfJjJD(Landroid/support/v8/renderscript/FieldPacker;Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addToPack(Landroid/support/v8/renderscript/FieldPacker;Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

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

.method public static faczTNxTHttLoqSH(Ljava/util/BitSet;I)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

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
    return v0

    nop

    nop

    nop
.end method

.method public static fcwVGIHGbfUtfNiH(Landroid/support/v8/renderscript/FieldPacker;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method private fe62c492816380be65b64eb4530a7993m(Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/2addr v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :catch_0
    goto/32 :goto_10

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

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    const v0, 0x17

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mLen:I

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

    :goto_6
    goto/32 :goto_c

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    :goto_8
    iget v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    :goto_9
    :try_start_0
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->fUeRaLXWdoMfJjJD(Landroid/support/v8/renderscript/FieldPacker;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0, v1}, Landroid/support/v8/renderscript/FieldPacker;->gixUYTGWwlgZLmWJ(Landroid/support/v8/renderscript/FieldPacker;I)Z

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_9

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    const v1, 0x1f

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

    nop

    :goto_f
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

    nop

    nop

    :goto_10
    iput v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public static fpaOMxqoIoQLjnDY(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

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

    nop

    nop

    nop
.end method

.method public static fyormlgbOJJgFOFF(Landroid/support/v8/renderscript/FieldPacker;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI32()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static gQATzqEqywHCnmCJ(Landroid/support/v8/renderscript/FieldPacker;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static gZdGDJEGDHZbBCdO(Landroid/support/v8/renderscript/FieldPacker;Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addToPack(Landroid/support/v8/renderscript/FieldPacker;Ljava/lang/Object;)V

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
.end method

.method public static gbrVMaWROkqvlGqJ(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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
    invoke-static {p0, p1, p2, p3}, Lmf;->b(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static gbyqTOlvFIDliVen(Landroid/support/v8/renderscript/FieldPacker;)I
    .locals 1

    goto/32 :goto_1

    nop

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

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI32()I

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

    nop

    nop
.end method

.method private static getPackedSize(Ljava/lang/Object;)I
    .locals 7

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    instance-of v0, p0, Ljava/lang/Double;

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_67

    nop

    nop

    nop

    :goto_4
    instance-of v0, p0, Landroid/support/v8/renderscript/Double3;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    :cond_2
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_8
    instance-of v0, p0, Landroid/support/v8/renderscript/Int4;

    nop

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

    :goto_9
    return v3

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_3

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

    :cond_3
    goto/32 :goto_22

    nop

    nop

    :goto_c
    return v4

    nop

    nop

    :goto_d
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    return v1

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_4

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/16 v5, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    instance-of v0, p0, Landroid/support/v8/renderscript/Long4;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_18
    if-nez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_26

    nop

    nop

    :goto_19
    if-nez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return v1

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_24

    nop

    nop

    :goto_1c
    if-nez v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_9
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_1d
    instance-of v0, p0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_1e
    if-eq p0, v3, :cond_a

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :cond_a
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_1f
    instance-of v0, p0, Landroid/support/v8/renderscript/Byte3;

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return v2

    nop

    :goto_21
    goto/32 :goto_13

    nop

    nop

    :goto_22
    return v1

    nop

    nop

    :goto_23
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    instance-of v0, p0, Ljava/lang/Short;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    instance-of v0, p0, Landroid/support/v8/renderscript/Short4;

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

    nop

    :goto_26
    return v3

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_28
    instance-of p0, p0, Landroid/support/v8/renderscript/BaseObj;

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_29
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    instance-of v0, p0, Landroid/support/v8/renderscript/Short2;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_2c
    return v6

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    add-int v0, v0, v1

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

    :goto_30
    if-nez v0, :cond_c

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    return v4

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_33
    instance-of v0, p0, Landroid/support/v8/renderscript/Byte2;

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_34
    return v6

    nop

    nop

    :goto_35
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_36
    const/4 v2, 0x4

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_37
    return v3

    nop

    nop

    :goto_38
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v0, :cond_d

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_1a

    nop

    nop

    :goto_3a
    return v4

    nop

    :goto_3b
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3c
    instance-of v0, p0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_84

    nop

    nop

    :goto_3f
    return v5

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_17

    nop

    nop

    :goto_41
    instance-of v0, p0, Landroid/support/v8/renderscript/Int3;

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_42
    if-nez v0, :cond_e

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-nez v0, :cond_f

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_44
    const/4 p0, 0x6

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_45
    return v1

    nop

    nop

    :goto_46
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_47
    return v1

    nop

    nop

    :goto_48
    goto/32 :goto_8

    nop

    nop

    :goto_49
    instance-of v0, p0, Landroid/support/v8/renderscript/Float4;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4a
    if-nez v0, :cond_10

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_4b
    sget p0, Landroid/support/v8/renderscript/RenderScript;->sPointerSize:I

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    return p0

    nop

    :goto_4d
    goto/32 :goto_83

    nop

    nop

    :goto_4e
    const/16 p0, 0x24

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

    :goto_4f
    instance-of v0, p0, Landroid/support/v8/renderscript/Float2;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_50
    if-nez v0, :cond_11

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_34

    nop

    nop

    :goto_51
    if-nez v0, :cond_12

    nop

    goto/32 :goto_8e

    nop

    :cond_12
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_52
    if-nez v0, :cond_13

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_6c

    nop

    nop

    :goto_53
    instance-of v0, p0, Ljava/lang/Byte;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_54
    instance-of v0, p0, Landroid/support/v8/renderscript/Long3;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_55
    if-nez v0, :cond_14

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_56
    return v5

    nop

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-nez v0, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_59
    instance-of v0, p0, Landroid/support/v8/renderscript/Float3;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5a
    instance-of v0, p0, Landroid/support/v8/renderscript/Double4;

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const/16 v6, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_5c
    return v1

    nop

    nop

    :goto_5d
    goto/32 :goto_3c

    nop

    nop

    :goto_5e
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_60
    instance-of v0, p0, Landroid/support/v8/renderscript/Double2;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_61
    return v2

    nop

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_63
    instance-of v0, p0, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_64
    instance-of v0, p0, Landroid/support/v8/renderscript/Short3;

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

    :goto_65
    const/4 p0, 0x3

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_66
    const/16 v1, 0xc

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_67
    return v3

    nop

    :goto_68
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    if-nez v0, :cond_16

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    if-lez v0, :cond_17

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_17
    goto/32 :goto_3d

    nop

    :goto_6b
    const/16 v3, 0x8

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

    :goto_6c
    const/16 p0, 0x40

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    if-nez v0, :cond_18

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_73

    nop

    nop

    :goto_6e
    if-nez v0, :cond_19

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    :cond_19
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    instance-of v0, p0, Landroid/support/v8/renderscript/Long2;

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

    :goto_70
    const/16 v4, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_71
    return v6

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_73
    return v2

    nop

    nop

    :goto_74
    goto/32 :goto_2

    nop

    nop

    :goto_75
    instance-of v0, p0, Landroid/support/v8/renderscript/Matrix4f;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    if-nez p0, :cond_1a

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

    :cond_1a
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_77
    instance-of v0, p0, Landroid/support/v8/renderscript/Byte4;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_78
    instance-of v0, p0, Landroid/support/v8/renderscript/Int2;

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

    :goto_79
    instance-of v0, p0, Landroid/support/v8/renderscript/Matrix3f;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_7a
    if-nez v0, :cond_1b

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_7b
    instance-of v0, p0, Landroid/support/v8/renderscript/Matrix2f;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_7c
    return v3

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_7e
    if-nez v0, :cond_1c

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    return p0

    nop

    nop

    nop

    :goto_80
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_81
    if-nez v0, :cond_1d

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_37

    nop

    nop

    :goto_82
    if-nez v0, :cond_1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_1e
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_3e

    nop

    nop

    :goto_84
    instance-of v0, p0, Ljava/lang/Boolean;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_85
    return v4

    nop

    nop

    nop

    nop

    :goto_86
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    return v2

    nop

    nop

    :goto_88
    goto/32 :goto_63

    nop

    nop

    :goto_89
    return p0

    nop

    nop

    nop

    nop

    :goto_8a
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    return p0

    nop

    nop

    nop

    nop

    :goto_8c
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_8d
    return v4

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static gixUYTGWwlgZLmWJ(Landroid/support/v8/renderscript/FieldPacker;I)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->38c54f59c13e58515dbbf633a1b3d3cdm(I)Z

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

    nop

    nop
.end method

.method public static gzNSYdLoobcYubTt(Landroid/support/v8/renderscript/FieldPacker;B)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    goto/32 :goto_1

    nop

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
.end method

.method public static hLxvxqbcaOzIDFAL(Landroid/support/v8/renderscript/FieldPacker;B)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

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

.method public static hUtNjRentDsNsLly(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static iBvawNNRhpVzFURo(Ljava/lang/Object;)I
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

    :goto_1
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->getPackedSize(Ljava/lang/Object;)I

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

.method public static iMdHJcvtYycyNnSM(Landroid/support/v8/renderscript/FieldPacker;I)V
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

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static iSNjpxZfOTALkzcP(Landroid/support/v8/renderscript/FieldPacker;D)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static iTiKFXBeBmatdgrD(Landroid/support/v8/renderscript/FieldPacker;I)V
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
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static iZAcqkJldeTwXuOx(Landroid/support/v8/renderscript/FieldPacker;S)V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static ifdwlFdBgNrSqzfA(Landroid/support/v8/renderscript/FieldPacker;)F
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

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF32()F

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static iumsACapxkQxojJo(Landroid/support/v8/renderscript/FieldPacker;J)V
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
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static izKmyASTDosnFnvP(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Short2;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI16(Landroid/support/v8/renderscript/Short2;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static jGezdtaLwpEvtFId(Ljava/util/BitSet;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->flip(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static jHanNMiysMeJuRJE(Landroid/support/v8/renderscript/FieldPacker;)D
    .locals 2

    goto/32 :goto_4

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF64()D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x16

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

    nop

    :goto_4
    const v0, 0x17

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    return-wide v0

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop
.end method

.method public static jNsXMtnQWhsfEzkM(Landroid/support/v8/renderscript/FieldPacker;S)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static jaoOipUxUQjLbBtR(Landroid/support/v8/renderscript/FieldPacker;)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF32()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static jnktFCNHaPVOITkT(Landroid/support/v8/renderscript/FieldPacker;)S
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI16()S

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static kCqRIqEKNGeZgImW(Landroid/support/v8/renderscript/FieldPacker;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF32()F

    move-result v0

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

    nop

    :goto_1
    return v0

    nop
.end method

.method public static kPtTFlDKGyKdYrey(Landroid/support/v8/renderscript/FieldPacker;)D
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    :goto_6
    const v0, 0x1b

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

    :goto_7
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF64()D

    move-result-wide v0

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

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public static kSsdwxbuVkDHdtAE(Landroid/support/v8/renderscript/FieldPacker;D)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    goto/32 :goto_1

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

.method public static knXDHFDpIfUrDSMb(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Matrix3f;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

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

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addMatrix(Landroid/support/v8/renderscript/Matrix3f;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static lCnlLvIRPrXYEGxF(Landroid/support/v8/renderscript/FieldPacker;S)V
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

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static laRXSwUyjxJDarYQ(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

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

.method public static lhPlqNfwEuYyOBjv(Landroid/support/v8/renderscript/FieldPacker;)S
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

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI16()S

    move-result v0

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

.method public static lkKeiwjBWshgvkGa(Landroid/support/v8/renderscript/FieldPacker;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->subalign(I)V

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
.end method

.method public static lutbyzJFUpDQQcWH(Ljava/lang/Long;)J
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x6

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    :goto_8
    const v1, 0x12

    nop

    goto/32 :goto_5

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
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static lxoLLzCUIzPxdBLh(Landroid/support/v8/renderscript/FieldPacker;S)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static mFaUloFManjuLOHK(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

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

    nop

    nop
.end method

.method public static mIfNBrzxwbIpSbCn(Landroid/support/v8/renderscript/FieldPacker;)D
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF64()D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    return-wide v0

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1

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

    nop

    :goto_8
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public static mVDPdIonoDKAjAyO(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Short4;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI16(Landroid/support/v8/renderscript/Short4;)V

    goto/32 :goto_1

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

.method public static mVgPrbjZfPpafRIN(Landroid/support/v8/renderscript/FieldPacker;F)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

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

.method public static mmoyQbHPwNVsLPFV(Landroid/support/v8/renderscript/FieldPacker;)J
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

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

    :goto_1
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    :goto_3
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI64()J

    move-result-wide v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

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

    :goto_a
    goto/32 :goto_6

    nop

    nop
.end method

.method public static nIjojFbcQrQmtKcH(ILjava/lang/String;)Ljava/lang/String;
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
    invoke-static {p0, p1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

.method public static nNPWKgowZjYdaOdi(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Byte3;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI8(Landroid/support/v8/renderscript/Byte3;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static nupaWDfYIFvtgsbM(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Int3;)V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI32(Landroid/support/v8/renderscript/Int3;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static nyWGzoUqfAxoVyAX(Landroid/support/v8/renderscript/FieldPacker;)D
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    :goto_2
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF64()D

    move-result-wide v0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    const v1, 0x5

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop
.end method

.method public static oEntENkNAPrGHXcJ(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    goto/32 :goto_1

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
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static oGObugGPNckCPeaM(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

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

.method public static oJsYsSfKbVtFRGKD(Landroid/support/v8/renderscript/FieldPacker;D)V
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

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static oZzqVAjuiNwtxMTo(Landroid/support/v8/renderscript/FieldPacker;)J
    .locals 2

    goto/32 :goto_a

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

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    const v1, 0x11

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI64()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    :goto_a
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public static obraZOpedAUKOLCt(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_1

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
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static oduqitWqDIKUyAez(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

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

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static oqhifkHZOPMFLxZc(Landroid/support/v8/renderscript/FieldPacker;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF32()F

    move-result v0

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

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static pRAzuHEmHchRgaYS(Landroid/support/v8/renderscript/FieldPacker;)J
    .locals 2

    goto/32 :goto_8

    nop

    nop

    :goto_0
    return-wide v0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
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

    :goto_5
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI64()J

    move-result-wide v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_8
    const v0, 0x14

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static paKfxgxVqczrVBIo(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_1

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
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static pgeKXUwjKCXzFzsm(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
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

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    return-wide v0

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

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
.end method

.method public static pnOzMKmDQXVHJjji(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static pzWgvloXjAGHbCIq(Landroid/support/v8/renderscript/FieldPacker;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF32()F

    move-result v0

    nop

    nop

    nop

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

    nop
.end method

.method public static qHdmuUEBtcMIkadg(Ljava/lang/Object;ILjava/lang/Object;II)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

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
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static qMyXCYzfpjRYpPVN(Landroid/support/v8/renderscript/FieldPacker;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI32()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static qoPDwQzzXPKDKpLK(Landroid/support/v8/renderscript/FieldPacker;)S
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI16()S

    move-result v0

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

.method public static qobMUKEdeeNpgoTw(Landroid/support/v8/renderscript/FieldPacker;)B
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI8()B

    move-result v0

    nop

    nop

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

.method public static qpXChzvwRvcmJrFR(Landroid/support/v8/renderscript/FieldPacker;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF32()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop
.end method

.method public static rGxMlfJhyPISmLLl(Ljava/lang/Boolean;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

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
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static rhPHMBCbUENVBBwB(Landroid/support/v8/renderscript/FieldPacker;J)V
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

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static sAKgAhkoWEpwRgcq(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Int2;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI32(Landroid/support/v8/renderscript/Int2;)V

    goto/32 :goto_1

    nop

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
.end method

.method public static sBjXFVoMIqsdpNZT(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

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
.end method

.method public static sWlPmgZkeFCzUODG(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static sjhwXtMwLZPufrzm(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Long3;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(Landroid/support/v8/renderscript/Long3;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static sjkxhDrGvQDCaVoS(Landroid/support/v8/renderscript/FieldPacker;)D
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_7
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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
    goto/32 :goto_0

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF64()D

    move-result-wide v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public static snuCnIcnyZtnpAIS(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Matrix4f;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addMatrix(Landroid/support/v8/renderscript/Matrix4f;)V

    goto/32 :goto_1

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

.method public static teTkMurxGTpxKLUR(Landroid/support/v8/renderscript/FieldPacker;)D
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    return-wide v0

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF64()D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_0

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

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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

    :goto_5
    goto/32 :goto_7

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_a

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

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public static teZJocyXusdabNjp(Landroid/support/v8/renderscript/FieldPacker;I)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->38c54f59c13e58515dbbf633a1b3d3cdm(I)Z

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

.method public static tfwoYWozcPDiWvOE(Landroid/support/v8/renderscript/FieldPacker;F)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    goto/32 :goto_1

    nop

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

.method public static tqxIQMgxuJkLVtPE(Landroid/support/v8/renderscript/FieldPacker;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI32()I

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public static trCWmIZXPOZjvopz(Landroid/support/v8/renderscript/FieldPacker;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->subalign(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static uCcYcVQmAgOWXtQJ(Landroid/support/v8/renderscript/FieldPacker;Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->fe62c492816380be65b64eb4530a7993m(Ljava/lang/Object;)V

    goto/32 :goto_1

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

.method public static uPjXasZjZRpjUGpf(Landroid/support/v8/renderscript/FieldPacker;)B
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI8()B

    move-result v0

    nop

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

.method public static uZyvIkFuQbmrPfaz(Ljava/lang/Float;)F
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

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

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

    nop
.end method

.method public static vyEaPnWYRJTkSPzU(Landroid/support/v8/renderscript/FieldPacker;F)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static wDGJBEeoFSCAxjdT(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

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

.method public static woPeFkZQInVIgjln(Landroid/support/v8/renderscript/FieldPacker;J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static wsQGNVJdSLmjlyCc(D)J
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-wide v0

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    const v1, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    const v0, 0x11

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

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop
.end method

.method public static wzOeUujGEoHodzJC(Landroid/support/v8/renderscript/FieldPacker;D)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

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
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static xBDzekkBuEfTvIOg(Landroid/support/v8/renderscript/FieldPacker;S)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static xKexvauhgKKCXlGS(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Float3;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(Landroid/support/v8/renderscript/Float3;)V

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

.method public static xVvkHFBzKMxwZeGw(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    :goto_2
    const v1, 0x4

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

    :goto_3
    goto/32 :goto_9

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_7
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

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
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x16

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
.end method

.method public static xnOzXCqVWDFEKuHI(Landroid/support/v8/renderscript/FieldPacker;)B
    .locals 1

    goto/32 :goto_1

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
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI8()B

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static xxaBkaSNGVuCISjE(Landroid/support/v8/renderscript/FieldPacker;)D
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF64()D

    move-result-wide v0

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

    nop

    :goto_4
    goto/32 :goto_2

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

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x14

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static yHiVAACEfJzhTfKg(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Float4;)V
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

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(Landroid/support/v8/renderscript/Float4;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static yiEfevRujKCYFaqu(Landroid/support/v8/renderscript/FieldPacker;S)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

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
.end method

.method public static zHSlAQbdtQeJEops(Landroid/support/v8/renderscript/FieldPacker;)J
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI64()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
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

    :goto_7
    return-wide v0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1d

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

    :goto_a
    const v0, 0xc

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public static zNxlZYVSBsEhxUJw(Landroid/support/v8/renderscript/FieldPacker;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->subalign(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static zZyvjmIayIslhqgV(Landroid/support/v8/renderscript/FieldPacker;S)V
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

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public addBoolean(Z)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->gzNSYdLoobcYubTt(Landroid/support/v8/renderscript/FieldPacker;B)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public addF32(F)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->VperaQWEsSkPzkIL(Landroid/support/v8/renderscript/FieldPacker;I)V

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

    :goto_2
    invoke-static {p1}, Landroid/support/v8/renderscript/FieldPacker;->DLKorcuHMvjDDxYV(F)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public addF32(Landroid/support/v8/renderscript/Float2;)V
    .locals 1

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

    :goto_1
    iget v0, p1, Landroid/support/v8/renderscript/Float2;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->VfInlpnnIvFAcCwI(Landroid/support/v8/renderscript/FieldPacker;F)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iget p1, p1, Landroid/support/v8/renderscript/Float2;->y:F

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

    :goto_4
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->RKydLiafhKjvevTP(Landroid/support/v8/renderscript/FieldPacker;F)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public addF32(Landroid/support/v8/renderscript/Float3;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

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

    :goto_1
    iget p1, p1, Landroid/support/v8/renderscript/Float3;->z:F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p1, Landroid/support/v8/renderscript/Float3;->x:F

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
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->FhkTcwjLwqkjLlNQ(Landroid/support/v8/renderscript/FieldPacker;F)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->RTwcGgAhNImsDggR(Landroid/support/v8/renderscript/FieldPacker;F)V

    goto/32 :goto_5

    nop

    nop

    :goto_5
    iget v0, p1, Landroid/support/v8/renderscript/Float3;->y:F

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->WDXShAnXrjTVWrTR(Landroid/support/v8/renderscript/FieldPacker;F)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public addF32(Landroid/support/v8/renderscript/Float4;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->brpkxMYujAVxedbw(Landroid/support/v8/renderscript/FieldPacker;F)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iget p1, p1, Landroid/support/v8/renderscript/Float4;->w:F

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p1, Landroid/support/v8/renderscript/Float4;->x:F

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    iget v0, p1, Landroid/support/v8/renderscript/Float4;->z:F

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->GTTfYmGrbOlsOlFn(Landroid/support/v8/renderscript/FieldPacker;F)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    iget v0, p1, Landroid/support/v8/renderscript/Float4;->y:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->FGpmkehpRRIHmhoq(Landroid/support/v8/renderscript/FieldPacker;F)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->vyEaPnWYRJTkSPzU(Landroid/support/v8/renderscript/FieldPacker;F)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public addF64(D)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-static {p0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->IPYKRhsoqmvzyUcu(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->wsQGNVJdSLmjlyCc(D)J

    move-result-wide p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public addF64(Landroid/support/v8/renderscript/Double2;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x17

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_4
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double2;->y:D

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
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

    nop

    :goto_b
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->iSNjpxZfOTALkzcP(Landroid/support/v8/renderscript/FieldPacker;D)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double2;->x:D

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

    :goto_d
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->TNKuvoJHWzUKkLJe(Landroid/support/v8/renderscript/FieldPacker;D)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public addF64(Landroid/support/v8/renderscript/Double3;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x16

    nop

    nop

    goto/32 :goto_d

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

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_2
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double3;->z:D

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double3;->y:D

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double3;->x:D

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->wzOeUujGEoHodzJC(Landroid/support/v8/renderscript/FieldPacker;D)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    :goto_b
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->oJsYsSfKbVtFRGKD(Landroid/support/v8/renderscript/FieldPacker;D)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1d

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->VzNTrqXXVzQAuIwh(Landroid/support/v8/renderscript/FieldPacker;D)V

    goto/32 :goto_6

    nop

    nop
.end method

.method public addF64(Landroid/support/v8/renderscript/Double4;)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_1
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->dnTUQvmkyDJFgWxL(Landroid/support/v8/renderscript/FieldPacker;D)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    const v0, 0x20

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double4;->z:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double4;->y:D

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double4;->w:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->kSsdwxbuVkDHdtAE(Landroid/support/v8/renderscript/FieldPacker;D)V

    goto/32 :goto_7

    nop

    nop

    :goto_c
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double4;->x:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->fSjlHsDQDAceUexS(Landroid/support/v8/renderscript/FieldPacker;D)V

    goto/32 :goto_5

    nop

    nop

    :goto_e
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->DJoWlVxYuxuPpHZb(Landroid/support/v8/renderscript/FieldPacker;D)V

    goto/32 :goto_3

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x1a

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public addI16(Landroid/support/v8/renderscript/Short2;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->NSoyzWuXsajjUOzc(Landroid/support/v8/renderscript/FieldPacker;S)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->xBDzekkBuEfTvIOg(Landroid/support/v8/renderscript/FieldPacker;S)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iget-short p1, p1, Landroid/support/v8/renderscript/Short2;->y:S

    nop

    goto/32 :goto_0

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

    :goto_4
    iget-short v0, p1, Landroid/support/v8/renderscript/Short2;->x:S

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public addI16(Landroid/support/v8/renderscript/Short3;)V
    .locals 1

    goto/32 :goto_4

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

    :goto_1
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->coHzLjTbfYvpJBwC(Landroid/support/v8/renderscript/FieldPacker;S)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-short p1, p1, Landroid/support/v8/renderscript/Short3;->z:S

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->lCnlLvIRPrXYEGxF(Landroid/support/v8/renderscript/FieldPacker;S)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iget-short v0, p1, Landroid/support/v8/renderscript/Short3;->x:S

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-short v0, p1, Landroid/support/v8/renderscript/Short3;->y:S

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->FDxFSqLYTbnHwnMn(Landroid/support/v8/renderscript/FieldPacker;S)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public addI16(Landroid/support/v8/renderscript/Short4;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-short p1, p1, Landroid/support/v8/renderscript/Short4;->w:S

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->yiEfevRujKCYFaqu(Landroid/support/v8/renderscript/FieldPacker;S)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->AYwxAZoVeLtufCKq(Landroid/support/v8/renderscript/FieldPacker;S)V

    goto/32 :goto_8

    nop

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

    nop

    :goto_4
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->JyooHGdHnvynQcRN(Landroid/support/v8/renderscript/FieldPacker;S)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->x:S

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

    :goto_6
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->y:S

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

    :goto_7
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->YrtxrLRWntlsxRxF(Landroid/support/v8/renderscript/FieldPacker;S)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->z:S

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public addI16(S)V
    .locals 5

    goto/32 :goto_8

    nop

    nop

    :goto_0
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    and-int/lit16 v4, p1, 0xff

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

    :goto_2
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->CODoyjhckYBJVBPt(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    add-int/lit8 v3, v2, 0x1

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

    :goto_5
    iput v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_17

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x13

    nop

    goto/32 :goto_10

    nop

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

    :cond_0
    goto/32 :goto_6

    nop

    :goto_a
    int-to-byte v4, v4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_b
    int-to-byte p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    aput-byte p0, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    shr-int/lit8 p0, p1, 0x8

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

    :goto_10
    const v1, 0x3

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

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

    :goto_13
    iget-object v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    aput-byte v4, v1, v2

    nop

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

    :goto_15
    add-int/2addr v2, v0

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

    :goto_16
    return-void

    nop

    :goto_17
    goto/32 :goto_11

    nop

    nop
.end method

.method public addI32(I)V
    .locals 6

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    :goto_2
    aput-byte v4, v1, v2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3
    and-int/lit16 p0, p0, 0xff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    const v1, 0x20

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    int-to-byte v5, v5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    int-to-byte p0, p0

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

    nop

    :goto_7
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->PBFqRhDrOVuMuqWb(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x4

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

    :goto_a
    add-int/lit8 v3, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_b
    and-int/lit16 v5, v5, 0xff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    iput v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_d
    add-int/2addr v2, v0

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

    :goto_e
    aput-byte v5, v1, v4

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

    :goto_f
    int-to-byte v4, v4

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    and-int/lit16 v4, p1, 0xff

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

    :goto_11
    shr-int/lit8 p0, p1, 0x18

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_12
    and-int/lit16 v5, v5, 0xff

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    int-to-byte v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_14
    iget-object v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

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

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_16
    aput-byte p0, v1, v3

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    shr-int/lit8 v5, p1, 0x8

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    iput v4, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_19
    add-int/lit8 v3, v2, 0x3

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    shr-int/lit8 v5, p1, 0x10

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1b
    add-int/lit8 v4, v2, 0x2

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

    nop

    nop

    :goto_1c
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1f
    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

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

    :goto_20
    iput v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_21
    aput-byte v5, v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

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

    :goto_23
    iget v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

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

    :goto_24
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop
.end method

.method public addI32(Landroid/support/v8/renderscript/Int2;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iget p1, p1, Landroid/support/v8/renderscript/Int2;->y:I

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

    nop

    :goto_2
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->MkYfrUikhdQKwCMH(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->KWVCjHbsDvXauktw(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v0, p1, Landroid/support/v8/renderscript/Int2;->x:I

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public addI32(Landroid/support/v8/renderscript/Int3;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p1, Landroid/support/v8/renderscript/Int3;->y:I

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

    :goto_1
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->iMdHJcvtYycyNnSM(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->ILGdNzORoWjCksSE(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget p1, p1, Landroid/support/v8/renderscript/Int3;->z:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iget v0, p1, Landroid/support/v8/renderscript/Int3;->x:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->FHQetESgUacptfKK(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public addI32(Landroid/support/v8/renderscript/Int4;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->z:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->FDtYGcoSfIvOYaeJ(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->HCxfxIlPFksFaQFP(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_0

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

    :goto_4
    iget p1, p1, Landroid/support/v8/renderscript/Int4;->w:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->x:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->ZsqgxGXtNBetSgSV(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_8

    nop

    nop

    :goto_7
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->NHrSrzacYjWFrXwF(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->y:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public addI64(J)V
    .locals 9

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_0
    shr-long v7, p1, v7

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_1
    iput v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2
    shr-long v7, p1, v7

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v7, 0x10

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

    :goto_4
    long-to-int p0, p0

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

    :goto_5
    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

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

    :goto_6
    and-long/2addr p0, v4

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

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int/lit8 v3, v2, 0x7

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

    :goto_a
    const/16 v7, 0x20

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

    :goto_b
    and-long/2addr v7, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_c
    const v1, 0x6

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_d
    iput v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    long-to-int v7, v7

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

    :goto_f
    and-long/2addr v7, v4

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_10
    aput-byte v7, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_11
    add-int/2addr v2, v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/16 p0, 0x38

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_13
    long-to-int v7, v7

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_14
    long-to-int v7, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_15
    aput-byte v7, v1, v6

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_16
    int-to-byte v7, v7

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_17
    const-wide/16 v4, 0xff

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_18
    iput v6, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_19
    int-to-byte v7, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_0
    goto/32 :goto_36

    nop

    :goto_1b
    add-int/lit8 v3, v2, 0x5

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

    :goto_1c
    int-to-byte v7, v7

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1d
    aput-byte v7, v1, v6

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_1e
    int-to-byte p0, p0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 v6, v2, 0x2

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    and-long/2addr v7, v4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_21
    const/16 v0, 0x8

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_22
    aput-byte v7, v1, v3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int/lit8 v3, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_24
    add-int/lit8 v6, v2, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_25
    int-to-byte v6, v6

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/16 v7, 0x28

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

    :goto_27
    iput v6, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

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

    :goto_28
    const/16 v7, 0x30

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

    :goto_29
    const/16 v7, 0x18

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

    :goto_2a
    iput v6, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

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

    :goto_2b
    aput-byte v7, v1, v6

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2c
    and-long/2addr v7, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_2d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_2f
    int-to-byte v7, v7

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_30
    iput v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_31
    shr-long v7, p1, v7

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_32
    long-to-int v6, v6

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_33
    long-to-int v7, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_34
    iget v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

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

    :goto_35
    iput v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_38
    and-long/2addr v7, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    shr-long v7, p1, v7

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_3b
    shr-long v7, p1, v0

    nop

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

    :goto_3c
    and-long/2addr v7, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3d
    shr-long v7, p1, v7

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

    :goto_3e
    add-int/lit8 v6, v2, 0x6

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3f
    aput-byte v7, v1, v3

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

    :goto_40
    const v0, 0x4

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

    nop

    :goto_41
    aput-byte p0, v1, v3

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_42
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_43
    long-to-int v7, v7

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

    :goto_44
    add-int/lit8 v3, v2, 0x3

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_45
    and-long v6, p1, v4

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_46
    long-to-int v7, v7

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_47
    shr-long p0, p1, p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->KGGGWKIJLoFBgvXg(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    aput-byte v6, v1, v2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4a
    int-to-byte v7, v7

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

    :goto_4b
    int-to-byte v7, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop
.end method

.method public addI64(Landroid/support/v8/renderscript/Long2;)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->x:J

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->mFaUloFManjuLOHK(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_9

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->y:J

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    :goto_b
    const v1, 0x1c

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

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_d
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->laRXSwUyjxJDarYQ(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public addI64(Landroid/support/v8/renderscript/Long3;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->z:J

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

    :goto_1
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->obraZOpedAUKOLCt(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_f

    nop

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
    goto/32 :goto_8

    nop

    nop

    :goto_4
    const v0, 0xe

    nop

    nop

    goto/32 :goto_9

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

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->x:J

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->fFqgggSkvDwRTVfk(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->GfWfKYkORxCOqSmm(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->y:J

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public addI64(Landroid/support/v8/renderscript/Long4;)V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->FRqIdbnPDKWmbxnA(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->x:J

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->aQyhbzKdZmvQVUJu(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

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
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->MNqbNmLygqgGuyiS(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_10

    nop

    nop

    :goto_6
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->z:J

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

    goto/32 :goto_a

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

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

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_c
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->w:J

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x19

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->agpwOPEnChWnLVma(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x14

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

    :goto_10
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->y:J

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop
.end method

.method public addI8(B)V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x3

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

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    const v1, 0x14

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

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

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    add-int/lit8 v2, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    aput-byte p1, v0, v1

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

    :goto_e
    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public addI8(Landroid/support/v8/renderscript/Byte2;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->UEXOLYttKsvmcGqt(Landroid/support/v8/renderscript/FieldPacker;B)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte2;->x:B

    nop

    nop

    nop

    goto/32 :goto_3

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

    :goto_3
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->eNBULcOLwhFYRMDx(Landroid/support/v8/renderscript/FieldPacker;B)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-byte p1, p1, Landroid/support/v8/renderscript/Byte2;->y:B

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
.end method

.method public addI8(Landroid/support/v8/renderscript/Byte3;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-byte p1, p1, Landroid/support/v8/renderscript/Byte3;->z:B

    nop

    nop

    nop

    goto/32 :goto_3

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
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->YyduzyiPQHqmUzoH(Landroid/support/v8/renderscript/FieldPacker;B)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->QTnUfDpRtFsSzFGA(Landroid/support/v8/renderscript/FieldPacker;B)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte3;->x:B

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte3;->y:B

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

    :goto_6
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->domwfmgsJfSrCYmN(Landroid/support/v8/renderscript/FieldPacker;B)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public addI8(Landroid/support/v8/renderscript/Byte4;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->VtjUGJBDRgIuzhXv(Landroid/support/v8/renderscript/FieldPacker;B)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->hLxvxqbcaOzIDFAL(Landroid/support/v8/renderscript/FieldPacker;B)V

    goto/32 :goto_8

    nop

    nop

    :goto_3
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->PVTkRQMCMcvkskMh(Landroid/support/v8/renderscript/FieldPacker;B)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte4;->x:B

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte4;->z:B

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
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->CDcjVcVlSywSicTl(Landroid/support/v8/renderscript/FieldPacker;B)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-byte p1, p1, Landroid/support/v8/renderscript/Byte4;->w:B

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte4;->y:B

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public addMatrix(Landroid/support/v8/renderscript/Matrix2f;)V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    :goto_4
    goto :goto_3

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    :goto_6
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

    :goto_7
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

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
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_c
    aget v1, v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    const v1, 0x7

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    const v0, 0x5

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lt v0, v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    array-length v2, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_12
    iget-object v1, p1, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    invoke-static {p0, v1}, Landroid/support/v8/renderscript/FieldPacker;->tfwoYWozcPDiWvOE(Landroid/support/v8/renderscript/FieldPacker;F)V

    goto/32 :goto_7

    nop

    nop
.end method

.method public addMatrix(Landroid/support/v8/renderscript/Matrix3f;)V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    goto :goto_b

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    array-length v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    const v1, 0xe

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x20

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lt v0, v2, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p0, v1}, Landroid/support/v8/renderscript/FieldPacker;->coBDDIMMqCVhXjDw(Landroid/support/v8/renderscript/FieldPacker;F)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    aget v1, v1, v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, p1, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

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

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_d

    nop
.end method

.method public addMatrix(Landroid/support/v8/renderscript/Matrix4f;)V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1a

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

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_2
    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    iget-object v1, p1, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

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

    :goto_5
    goto/32 :goto_13

    nop

    :goto_6
    invoke-static {p0, v1}, Landroid/support/v8/renderscript/FieldPacker;->mVgPrbjZfPpafRIN(Landroid/support/v8/renderscript/FieldPacker;F)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    if-lt v0, v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    const/4 v0, 0x0

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x6

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    aget v1, v1, v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    array-length v2, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public addObj(Landroid/support/v8/renderscript/BaseObj;)V
    .locals 5

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, v3, v4}, Landroid/support/v8/renderscript/FieldPacker;->rhPHMBCbUENVBBwB(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v1, v2}, Landroid/support/v8/renderscript/FieldPacker;->FExrMAQqaFOpQyzz(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_18

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

    nop

    :goto_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    const/16 v0, 0x8

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

    :goto_8
    invoke-static {p0, v1, v2}, Landroid/support/v8/renderscript/FieldPacker;->sBjXFVoMIqsdpNZT(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_17

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    sget p1, Landroid/support/v8/renderscript/RenderScript;->sPointerSize:I

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_c
    invoke-static {p0, v1, v2}, Landroid/support/v8/renderscript/FieldPacker;->KgkEMbaOvJDfWDGx(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_e
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_f
    const/4 v4, 0x0

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

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_13
    invoke-static {p1, v4}, Landroid/support/v8/renderscript/FieldPacker;->pgeKXUwjKCXzFzsm(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

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

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_15
    const-wide/16 v1, 0x0

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

    :goto_16
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p0, v1, v2}, Landroid/support/v8/renderscript/FieldPacker;->woPeFkZQInVIgjln(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p1, v4}, Landroid/support/v8/renderscript/FieldPacker;->xVvkHFBzKMxwZeGw(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

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

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1c
    long-to-int p1, v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1d
    if-eq v3, v0, :cond_2

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

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p0, v1, v2}, Landroid/support/v8/renderscript/FieldPacker;->hUtNjRentDsNsLly(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1f
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->XDXBIXsrWgdYTBUH(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_9

    nop

    nop

    :goto_20
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->esHDJAdxAxXIXCds(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-eq p1, v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_22
    sget v3, Landroid/support/v8/renderscript/RenderScript;->sPointerSize:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_23
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {p0, v1, v2}, Landroid/support/v8/renderscript/FieldPacker;->bXTzTqgReoPNuCSS(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {p0, v1, v2}, Landroid/support/v8/renderscript/FieldPacker;->MHuAbHMjpiTulpmM(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_c

    nop

    nop
.end method

.method public addU16(I)V
    .locals 5

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_18

    nop

    nop

    :goto_1
    const-string v0, " )"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->IfmthoynkrJlCiVG(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    add-int/2addr v2, v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_5
    const v1, 0x9

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    iget v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

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
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_8
    if-gez p1, :cond_0

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

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    :goto_9
    and-int/lit16 v4, p1, 0xff

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->WQmjhlCCpxOwWWYT(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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

    :goto_d
    add-int/lit8 v3, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_e
    int-to-byte p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_10
    if-le p1, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    :goto_11
    int-to-byte v4, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x6

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

    :goto_13
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    :goto_14
    const-string p1, "rs"

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    aput-byte v4, v1, v2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    shr-int/lit8 p0, p1, 0x8

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

    :goto_17
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_8

    nop

    nop

    :goto_19
    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

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

    nop

    :goto_1a
    invoke-static {p1, p0}, Landroid/support/v8/renderscript/FieldPacker;->pnOzMKmDQXVHJjji(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    throw p0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0xffff

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

    :goto_1e
    const-string p0, "FieldPacker.addU16( "

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v0, 0x2

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

    :goto_22
    const-string p1, "Saving value out of range for type"

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_23
    aput-byte p0, v1, v3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop
.end method

.method public addU16(Landroid/support/v8/renderscript/Int2;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->ALXNfTIYglKIgMDm(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->FihqKFpGMwlXxmsJ(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_2

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

    nop

    :goto_3
    iget v0, p1, Landroid/support/v8/renderscript/Int2;->x:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget p1, p1, Landroid/support/v8/renderscript/Int2;->y:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public addU16(Landroid/support/v8/renderscript/Int3;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

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

    :goto_1
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->XDBgOeNfFQNJFyfu(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->gQATzqEqywHCnmCJ(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->HAOMtWDGyioRynSw(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iget p1, p1, Landroid/support/v8/renderscript/Int3;->z:I

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

    nop

    :goto_5
    iget v0, p1, Landroid/support/v8/renderscript/Int3;->y:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    iget v0, p1, Landroid/support/v8/renderscript/Int3;->x:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public addU16(Landroid/support/v8/renderscript/Int4;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->fcwVGIHGbfUtfNiH(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->iTiKFXBeBmatdgrD(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->x:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->y:I

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

    :goto_5
    iget p1, p1, Landroid/support/v8/renderscript/Int4;->w:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->z:I

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

    nop

    :goto_7
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->aRPajNsZqgbGLGvX(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->EobHZZEHKMHLCRVS(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_5

    nop

    nop
.end method

.method public addU32(J)V
    .locals 9

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1
    invoke-static {p1, p0}, Landroid/support/v8/renderscript/FieldPacker;->oEntENkNAPrGHXcJ(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    shr-long v7, p1, v7

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

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

    :goto_4
    long-to-int v6, v6

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_6
    const/16 v7, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    aput-byte v4, v1, v6

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    int-to-byte p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_9
    add-int/2addr v2, v0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    long-to-int v4, v4

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_f
    cmp-long v0, p1, v0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_10
    aput-byte v7, v1, v3

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_11
    cmp-long v0, p1, v0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    and-long v6, p1, v4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->RPkcamqMAelMRaYF(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_15
    iput v6, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_16
    long-to-int p0, p0

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

    nop

    :goto_17
    const-string p0, "FieldPacker.addU32( "

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_18
    const-wide/16 v4, 0xff

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

    :goto_19
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    throw p0

    nop

    :goto_1b
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1c
    and-long/2addr v7, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1d
    invoke-static {p1, p2, p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->QLfVJIvEGyZTHzJA(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x17

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_20
    iput v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_21
    int-to-byte v7, v7

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_22
    shr-long v7, p1, v7

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

    :goto_23
    aput-byte p0, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/16 p0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_26
    long-to-int v7, v7

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_27
    int-to-byte v6, v6

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string p1, "Saving value out of range for type"

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_29
    int-to-byte v4, v4

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    add-int/lit8 v6, v2, 0x2

    nop

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

    :goto_2b
    iput v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_2f
    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_30
    const-wide v0, 0xffffffffL

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/16 v7, 0x8

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_32
    shr-long p0, p1, p0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_33
    if-gez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_2
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_35
    const-string p1, "rs"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_36
    add-int/lit8 v3, v2, 0x1

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

    :goto_37
    add-int/lit8 v3, v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_38
    and-long/2addr v4, v7

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

    :goto_39
    const-string v0, " )"

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_3a
    aput-byte v6, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_3b
    iget-object v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

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
.end method

.method public addU32(Landroid/support/v8/renderscript/Long2;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    const v1, 0x6

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->y:J

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->PiYUDZeSIVjMwfIY(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_9

    nop

    nop

    :goto_c
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->x:J

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

    :goto_d
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->sWlPmgZkeFCzUODG(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public addU32(Landroid/support/v8/renderscript/Long3;)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->x:J

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

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->y:J

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

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->CLtumVggYxxInUOJ(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->iumsACapxkQxojJo(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    const v1, 0xe

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
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->QetAiPWHkfODAgis(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_2

    nop

    nop

    :goto_c
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->z:J

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_f
    rem-int v0, v0, v1

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
.end method

.method public addU32(Landroid/support/v8/renderscript/Long4;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->z:J

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->KBjKhYthXJgcNTLk(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    :goto_6
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->fpaOMxqoIoQLjnDY(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x12

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->dAWviYeccbldrNdC(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->w:J

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

    :goto_a
    add-int v0, v0, v1

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

    nop

    :goto_b
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->y:J

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

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->x:J

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->oGObugGPNckCPeaM(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop
.end method

.method public addU64(J)V
    .locals 9

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    and-long/2addr v4, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    and-long/2addr v7, v4

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

    nop

    :goto_2
    int-to-byte v7, v7

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v7, 0x20

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_41

    nop

    :goto_5
    int-to-byte v7, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_6
    and-long/2addr v7, v4

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    and-long/2addr v7, v4

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

    :goto_8
    const-string p1, "Saving value out of range for type"

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    long-to-int v7, v7

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    long-to-int v4, v4

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

    nop

    :goto_b
    add-int/lit8 v3, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_c
    iput v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aput-byte v7, v1, v3

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_e
    int-to-byte v6, v6

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_f
    shr-long v7, p1, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    aput-byte v7, v1, v3

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

    :goto_12
    return-void

    nop

    nop

    :goto_13
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_14
    long-to-int v6, v6

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v6, v2, 0x4

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    int-to-byte v7, v7

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    and-long/2addr v7, v4

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

    :goto_18
    long-to-int v7, v7

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

    :goto_19
    const/16 v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_42

    nop

    :goto_1b
    const/16 v7, 0x28

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_1c
    const/16 p0, 0x38

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int/lit8 v6, v2, 0x2

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

    :goto_1e
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1f
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    cmp-long v0, p1, v0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_22
    invoke-static {p1, p2, p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->gbrVMaWROkqvlGqJ(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_23
    const-string p0, "FieldPacker.addU64( "

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/16 v7, 0x30

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_25
    int-to-byte p0, p0

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_26
    int-to-byte v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_27
    invoke-static {p1, p0}, Landroid/support/v8/renderscript/FieldPacker;->XUFQIHqVmExDNIsP(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    shr-long p0, p1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_29
    const-wide/16 v4, 0xff

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_2a
    iget v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

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

    :goto_2b
    shr-long v7, p1, v7

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

    :goto_2c
    int-to-byte v7, v7

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_2d
    shr-long v7, p1, v7

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2e
    if-gez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2f
    long-to-int v7, v7

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_30
    aput-byte v6, v1, v2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_31
    long-to-int v7, v7

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_33
    shr-long v7, p1, v7

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

    :goto_34
    shr-long v7, p1, v7

    nop

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

    :goto_35
    const-string v0, " )"

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_36
    iput v6, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

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

    :goto_37
    aput-byte v7, v1, v3

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_38
    add-int/lit8 v3, v2, 0x7

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_39
    add-int/lit8 v3, v2, 0x3

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3b
    add-int/lit8 v3, v2, 0x5

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

    :goto_3c
    aput-byte v7, v1, v6

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_3d
    iput v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_3e
    const v0, 0x18

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_3f
    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_40
    shr-long v7, p1, v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_41
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_1e

    nop

    nop

    :goto_43
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_44
    add-int/2addr v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_45
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_46
    iput v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_47
    int-to-byte v7, v7

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_48
    aput-byte v7, v1, v6

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_49
    const-string p1, "rs"

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_4a
    iput v6, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->dMDtsibYrjIZsfQI(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_4c
    add-int/lit8 v6, v2, 0x6

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_4d
    long-to-int p0, p0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4f
    iput v6, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

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

    :goto_50
    and-long v6, p1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_51
    aput-byte p0, v1, v3

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_52
    aput-byte v4, v1, v6

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    long-to-int v7, v7

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    and-long/2addr v7, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_55
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_56
    const/16 v7, 0x10

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const/16 v7, 0x18

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop
.end method

.method public addU64(Landroid/support/v8/renderscript/Long2;)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->y:J

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0xf

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

    :goto_3
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->IgBQRJEUiftFsnaD(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->RrSWmfUAklFlnJRb(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1b

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

    :goto_6
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->x:J

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public addU64(Landroid/support/v8/renderscript/Long3;)V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->TWCrwGKIdWFJMcya(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->z:J

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
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

    :goto_4
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->x:J

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->ccyfvJdkWLbRJhrd(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->wDGJBEeoFSCAxjdT(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0xe

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

    nop

    :goto_8
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->y:J

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

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x16

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public addU64(Landroid/support/v8/renderscript/Long4;)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->bLnbpBCzVcDBiJFE(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xe

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

    :goto_2
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->z:J

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->x:J

    nop

    goto/32 :goto_a

    nop

    nop

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
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->oduqitWqDIKUyAez(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0xf

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

    :goto_d
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->paKfxgxVqczrVBIo(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->aPrHPzUjCljnNTVM(Landroid/support/v8/renderscript/FieldPacker;J)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->w:J

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

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->y:J

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

.method public addU8(Landroid/support/v8/renderscript/Short2;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->lxoLLzCUIzPxdBLh(Landroid/support/v8/renderscript/FieldPacker;S)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-short p1, p1, Landroid/support/v8/renderscript/Short2;->y:S

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->PbgiFuEHQOHsYzgv(Landroid/support/v8/renderscript/FieldPacker;S)V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iget-short v0, p1, Landroid/support/v8/renderscript/Short2;->x:S

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

    nop

    nop

    nop
.end method

.method public addU8(Landroid/support/v8/renderscript/Short3;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iget-short v0, p1, Landroid/support/v8/renderscript/Short3;->x:S

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->JScCRMPWLfLTCJtb(Landroid/support/v8/renderscript/FieldPacker;S)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-short p1, p1, Landroid/support/v8/renderscript/Short3;->z:S

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->zZyvjmIayIslhqgV(Landroid/support/v8/renderscript/FieldPacker;S)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    iget-short v0, p1, Landroid/support/v8/renderscript/Short3;->y:S

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->iZAcqkJldeTwXuOx(Landroid/support/v8/renderscript/FieldPacker;S)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public addU8(Landroid/support/v8/renderscript/Short4;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->z:S

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
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->OzGgaZNxOszgqmXf(Landroid/support/v8/renderscript/FieldPacker;S)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->jNsXMtnQWhsfEzkM(Landroid/support/v8/renderscript/FieldPacker;S)V

    goto/32 :goto_8

    nop

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

    :goto_4
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->UlxhVgQbHPufMjaT(Landroid/support/v8/renderscript/FieldPacker;S)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->x:S

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->y:S

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->XCzsXrVObzJscJmB(Landroid/support/v8/renderscript/FieldPacker;S)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    iget-short p1, p1, Landroid/support/v8/renderscript/Short4;->w:S

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public addU8(S)V
    .locals 3

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->XMzBxLKKXgbMQYOp(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    const-string p0, "FieldPacker.addU8( "

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3
    const-string v0, " )"

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
    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    int-to-byte p0, p1

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

    :goto_6
    const-string p1, "rs"

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1, p0}, Landroid/support/v8/renderscript/FieldPacker;->PfwSdtnWVAwWyJvB(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_c
    goto/32 :goto_9

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x11

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-gez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    :goto_10
    if-le p1, v0, :cond_1

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

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    const-string p1, "Saving value out of range for type"

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/16 v0, 0xff

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_d

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x14

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

    :goto_18
    if-lez v0, :cond_2

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    :goto_19
    add-int/lit8 v2, v1, 0x1

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

    :goto_1a
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1c
    aput-byte p0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public align(I)V
    .locals 3

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

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

    :goto_1
    const/4 v2, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3
    if-nez v1, :cond_0

    nop

    goto/32 :goto_14

    nop

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

    :goto_4
    const-string v0, "argument must be a non-negative non-zero power of 2: "

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

    :goto_5
    throw p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v1, p1}, Landroid/support/v8/renderscript/FieldPacker;->cPNvynGrGECSCwmM(Ljava/util/BitSet;I)V

    goto/32 :goto_10

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_19

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    if-eqz v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    :goto_d
    goto/32 :goto_1b

    nop

    nop

    :goto_e
    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_10
    iget-object p1, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_11
    aput-byte v2, p1, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    if-gtz p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_d

    nop

    :goto_14
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v2, v1, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    and-int v1, p1, v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_18
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x3

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget p1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_b

    nop

    nop

    :goto_1d
    and-int v1, p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1e
    invoke-static {p1, v0}, Landroid/support/v8/renderscript/FieldPacker;->COlMJQHwiWwtQrGj(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

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

    :goto_20
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_a

    nop

    :goto_21
    add-int/lit8 v0, p1, -0x1

    nop

    goto/32 :goto_16

    nop

    nop
.end method

.method public final getData()[B
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
    iget-object p0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

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

.method public getPos()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public reset()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

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

.method public reset(I)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mLen:I

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

    :goto_1
    invoke-static {p1, v0}, Landroid/support/v8/renderscript/FieldPacker;->nIjojFbcQrQmtKcH(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

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

    nop

    nop

    :goto_2
    iput p1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    const-string v0, "out of range argument: "

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

    :goto_5
    if-le p1, v0, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_2

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
    if-gez p1, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public skip(I)V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    if-le v0, v1, :cond_0

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    :goto_1
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_2
    const-string v0, "out of range argument: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    add-int/2addr v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1, v0}, Landroid/support/v8/renderscript/FieldPacker;->KciAENPmqZPMbOGw(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
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

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mLen:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x2

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

    :goto_10
    if-gez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

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

    nop

    :goto_11
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    const v1, 0x1e

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    :goto_14
    iput v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    iget v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public subBoolean()Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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

    :goto_1
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->uPjXasZjZRpjUGpf(Landroid/support/v8/renderscript/FieldPacker;)B

    move-result p0

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

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    :goto_5
    if-eq p0, v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop
.end method

.method public subByte2()Landroid/support/v8/renderscript/Byte2;
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    :goto_1
    goto/32 :goto_d

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

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_3
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->KKmdaunwLHZSSqmI(Landroid/support/v8/renderscript/FieldPacker;)B

    move-result v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Landroid/support/v8/renderscript/Byte2;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    iput-byte v1, v0, Landroid/support/v8/renderscript/Byte2;->y:B

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

    nop

    :goto_8
    const v0, 0xd

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->LsHgbglfrPsaamZH(Landroid/support/v8/renderscript/FieldPacker;)B

    move-result p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    const v1, 0x12

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Landroid/support/v8/renderscript/Byte2;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    :goto_f
    iput-byte p0, v0, Landroid/support/v8/renderscript/Byte2;->x:B

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
.end method

.method public subByte3()Landroid/support/v8/renderscript/Byte3;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->FzEzAUJYvWGlVmHe(Landroid/support/v8/renderscript/FieldPacker;)B

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Landroid/support/v8/renderscript/Byte3;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    iput-byte v1, v0, Landroid/support/v8/renderscript/Byte3;->y:B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_9
    iput-byte p0, v0, Landroid/support/v8/renderscript/Byte3;->x:B

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    return-object v0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    :goto_c
    new-instance v0, Landroid/support/v8/renderscript/Byte3;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    const v1, 0x1b

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

    :goto_e
    iput-byte v1, v0, Landroid/support/v8/renderscript/Byte3;->z:B

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->xnOzXCqVWDFEKuHI(Landroid/support/v8/renderscript/FieldPacker;)B

    move-result v1

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

    :goto_10
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->DrROFQLIYnWGhnBh(Landroid/support/v8/renderscript/FieldPacker;)B

    move-result p0

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

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public subByte4()Landroid/support/v8/renderscript/Byte4;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_c

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->BQOzFgLckyIOOxDy(Landroid/support/v8/renderscript/FieldPacker;)B

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4
    invoke-direct {v0}, Landroid/support/v8/renderscript/Byte4;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    iput-byte v1, v0, Landroid/support/v8/renderscript/Byte4;->z:B

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->qobMUKEdeeNpgoTw(Landroid/support/v8/renderscript/FieldPacker;)B

    move-result v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    iput-byte v1, v0, Landroid/support/v8/renderscript/Byte4;->w:B

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
    new-instance v0, Landroid/support/v8/renderscript/Byte4;

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

    :goto_a
    const v0, 0x9

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    :goto_e
    iput-byte p0, v0, Landroid/support/v8/renderscript/Byte4;->x:B

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->EJXvQgQpuLCprYgd(Landroid/support/v8/renderscript/FieldPacker;)B

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    iput-byte v1, v0, Landroid/support/v8/renderscript/Byte4;->y:B

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->AuRWBVIiSjdluFPC(Landroid/support/v8/renderscript/FieldPacker;)B

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_13
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method public subDouble2()Landroid/support/v8/renderscript/Double2;
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x12

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

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    new-instance v0, Landroid/support/v8/renderscript/Double2;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

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

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    iput-wide v1, v0, Landroid/support/v8/renderscript/Double2;->y:D

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->sjkxhDrGvQDCaVoS(Landroid/support/v8/renderscript/FieldPacker;)D

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    return-object v0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-wide v1, v0, Landroid/support/v8/renderscript/Double2;->x:D

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->EbRWFrDkQaKfgXiu(Landroid/support/v8/renderscript/FieldPacker;)D

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Landroid/support/v8/renderscript/Double2;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public subDouble3()Landroid/support/v8/renderscript/Double3;
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Landroid/support/v8/renderscript/Double3;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput-wide v1, v0, Landroid/support/v8/renderscript/Double3;->y:D

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->xxaBkaSNGVuCISjE(Landroid/support/v8/renderscript/FieldPacker;)D

    move-result-wide v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Landroid/support/v8/renderscript/Double3;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    return-object v0

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-wide v1, v0, Landroid/support/v8/renderscript/Double3;->x:D

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->mIfNBrzxwbIpSbCn(Landroid/support/v8/renderscript/FieldPacker;)D

    move-result-wide v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->jHanNMiysMeJuRJE(Landroid/support/v8/renderscript/FieldPacker;)D

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    iput-wide v1, v0, Landroid/support/v8/renderscript/Double3;->z:D

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public subDouble4()Landroid/support/v8/renderscript/Double4;
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->kPtTFlDKGyKdYrey(Landroid/support/v8/renderscript/FieldPacker;)D

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->nyWGzoUqfAxoVyAX(Landroid/support/v8/renderscript/FieldPacker;)D

    move-result-wide v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Landroid/support/v8/renderscript/Double4;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->GcwjwgisQYmcMJYe(Landroid/support/v8/renderscript/FieldPacker;)D

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4
    iput-wide v1, v0, Landroid/support/v8/renderscript/Double4;->z:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_6
    iput-wide v1, v0, Landroid/support/v8/renderscript/Double4;->x:D

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

    :goto_7
    const v1, 0x9

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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

    :goto_d
    const v0, 0x12

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->teTkMurxGTpxKLUR(Landroid/support/v8/renderscript/FieldPacker;)D

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-wide v1, v0, Landroid/support/v8/renderscript/Double4;->w:D

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0}, Landroid/support/v8/renderscript/Double4;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    iput-wide v1, v0, Landroid/support/v8/renderscript/Double4;->y:D

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public subF32()F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->tqxIQMgxuJkLVtPE(Landroid/support/v8/renderscript/FieldPacker;)I

    move-result p0

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
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->WCMYrDaIKUuilxdK(I)F

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop
.end method

.method public subF64()D
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->MlAvlanREYEzpNqq(Landroid/support/v8/renderscript/FieldPacker;)J

    move-result-wide v0

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

    :goto_1
    const v0, 0x17

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
    goto/32 :goto_a

    nop

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
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    const v1, 0x4

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

    :goto_9
    goto/32 :goto_4

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->RxZMXXIkuzDqQWIJ(J)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public subFloat2()Landroid/support/v8/renderscript/Float2;
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->eRnmYjrMFDZqKMnn(Landroid/support/v8/renderscript/FieldPacker;)F

    move-result v1

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

    :goto_1
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->ifdwlFdBgNrSqzfA(Landroid/support/v8/renderscript/FieldPacker;)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    iput v1, v0, Landroid/support/v8/renderscript/Float2;->y:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    const v1, 0x1e

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

    :goto_7
    new-instance v0, Landroid/support/v8/renderscript/Float2;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    iput p0, v0, Landroid/support/v8/renderscript/Float2;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_8

    nop

    :goto_c
    return-object v0

    nop

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
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_f
    invoke-direct {v0}, Landroid/support/v8/renderscript/Float2;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public subFloat3()Landroid/support/v8/renderscript/Float3;
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    iput v1, v0, Landroid/support/v8/renderscript/Float3;->y:F

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->pzWgvloXjAGHbCIq(Landroid/support/v8/renderscript/FieldPacker;)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->SeYVTflUPyHIoAHt(Landroid/support/v8/renderscript/FieldPacker;)F

    move-result v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    iput p0, v0, Landroid/support/v8/renderscript/Float3;->x:F

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    :goto_7
    invoke-direct {v0}, Landroid/support/v8/renderscript/Float3;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

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

    :goto_9
    goto/32 :goto_e

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x5

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

    :goto_c
    new-instance v0, Landroid/support/v8/renderscript/Float3;

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

    :goto_d
    return-object v0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->jaoOipUxUQjLbBtR(Landroid/support/v8/renderscript/FieldPacker;)F

    move-result v1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    const v1, 0x12

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput v1, v0, Landroid/support/v8/renderscript/Float3;->z:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public subFloat4()Landroid/support/v8/renderscript/Float4;
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->kCqRIqEKNGeZgImW(Landroid/support/v8/renderscript/FieldPacker;)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    new-instance v0, Landroid/support/v8/renderscript/Float4;

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

    nop

    :goto_3
    invoke-direct {v0}, Landroid/support/v8/renderscript/Float4;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput v1, v0, Landroid/support/v8/renderscript/Float4;->y:F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

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

    :goto_9
    return-object v0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput p0, v0, Landroid/support/v8/renderscript/Float4;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_d
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->FBInHxqyAdFGyHjH(Landroid/support/v8/renderscript/FieldPacker;)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_10
    iput v1, v0, Landroid/support/v8/renderscript/Float4;->z:F

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->JwKHoKRQOYkUkPkL(Landroid/support/v8/renderscript/FieldPacker;)F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    iput v1, v0, Landroid/support/v8/renderscript/Float4;->w:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->qpXChzvwRvcmJrFR(Landroid/support/v8/renderscript/FieldPacker;)F

    move-result v1

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
.end method

.method public subI16()S
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    and-int/lit16 p0, p0, 0xff

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    add-int/lit8 v2, v1, -0x1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->zNxlZYVSBsEhxUJw(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7
    shl-int/lit8 v0, v2, 0x8

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    or-int/2addr p0, v0

    nop

    nop

    nop

    goto/32 :goto_c

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

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_c
    int-to-short p0, p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_d
    and-int/lit16 v2, v2, 0xff

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_e
    iput v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

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

    nop

    :goto_10
    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    aget-byte p0, v0, v1

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

    :goto_13
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    int-to-short v0, v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_17
    aget-byte v2, v0, v2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_18
    add-int/lit8 v1, v1, -0x2

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

    :goto_19
    const v1, 0x19

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

    nop
.end method

.method public subI32()I
    .locals 5

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v1, v1, -0x4

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

    nop

    :goto_1
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3
    and-int/lit16 p0, p0, 0xff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_4
    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    aget-byte v2, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->trCWmIZXPOZjvopz(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    shl-int/lit8 v1, v3, 0x10

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8
    add-int/lit8 v3, v1, -0x2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    or-int/2addr p0, v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_c
    aget-byte v4, v0, v4

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

    :goto_d
    shl-int/lit8 v1, v4, 0x8

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    and-int/lit16 v4, v4, 0xff

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int/lit8 v4, v1, -0x3

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x8

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_11
    or-int/2addr v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    aget-byte p0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_21

    nop

    :goto_14
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_15
    or-int/2addr v0, v1

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

    :goto_16
    add-int/lit8 v2, v1, -0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    :goto_18
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1a
    shl-int/lit8 v0, v2, 0x18

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

    :goto_1b
    and-int/lit16 v2, v2, 0xff

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1d
    and-int/lit16 v3, v3, 0xff

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v0, 0x4

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    aget-byte v3, v0, v3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_19

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
    iput v4, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

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
.end method

.method public subI64()J
    .locals 19

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_0
    shl-long v6, v14, v6

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

    :goto_1
    aget-byte v0, v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2
    iput v8, v0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    or-long/2addr v0, v4

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    shl-long v6, v12, v6

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

    :goto_5
    aget-byte v6, v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6
    or-long/2addr v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    aget-byte v14, v2, v14

    nop

    nop

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

    :goto_8
    iput v14, v0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    const/16 v1, 0x8

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_a
    int-to-long v10, v10

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_b
    return-wide v0

    nop

    nop

    :goto_c
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_d
    const/16 v6, 0x8

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

    :goto_e
    int-to-long v14, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_f
    int-to-long v4, v4

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    and-long/2addr v0, v2

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

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    shl-long v6, v16, v6

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_13
    and-long/2addr v10, v2

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v14, v3, -0x6

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_33

    nop

    :goto_16
    iput v3, v0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

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

    :goto_17
    aget-byte v10, v2, v10

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_18
    and-long/2addr v8, v2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int/lit8 v1, v3, -0x7

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/16 v6, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1b
    iput v1, v0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

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

    :goto_1d
    int-to-long v12, v12

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int/lit8 v4, v3, -0x1

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

    :goto_1f
    int-to-long v6, v6

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_20
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_21
    const/16 v6, 0x10

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_22
    aget-byte v1, v2, v1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput v6, v0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_24
    int-to-long v0, v0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    aget-byte v12, v2, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_26
    int-to-long v8, v8

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v0, 0xd

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

    :goto_28
    or-long/2addr v4, v6

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

    :goto_29
    const/16 v6, 0x28

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2a
    iget-object v2, v0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_2b
    add-int/lit8 v8, v3, -0x3

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

    :goto_2c
    shl-long v6, v8, v6

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_2d
    add-int/lit8 v6, v3, -0x2

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

    nop

    :goto_2e
    const-wide/16 v2, 0xff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_2f
    const/16 v6, 0x20

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

    :goto_30
    int-to-long v14, v14

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

    :goto_31
    or-long/2addr v4, v6

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

    :goto_32
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move-wide/from16 v16, v14

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

    :goto_35
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_32

    nop

    :goto_36
    iput v12, v0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_37
    aget-byte v4, v2, v4

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_38
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_39
    and-long v16, v16, v2

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    or-long/2addr v4, v6

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3b
    shl-long v4, v4, v18

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget v3, v0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    or-long/2addr v4, v6

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    or-long/2addr v4, v6

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3f
    iput v10, v0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_40
    shl-long v6, v10, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_41
    add-int/lit8 v12, v3, -0x5

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_42
    aget-byte v8, v2, v8

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_43
    and-long/2addr v4, v2

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_44
    add-int/lit8 v10, v3, -0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_45
    iput v4, v0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_46
    and-long/2addr v14, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->GzQzxSOYiZApwCGH(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_48
    add-int/lit8 v3, v3, -0x8

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_49
    const/16 v18, 0x38

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const/16 v18, 0x30

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_4b
    and-long/2addr v6, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4c
    shl-long v6, v6, v18

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_4d
    and-long/2addr v12, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop
.end method

.method public subI8()B
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_1
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

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

    :goto_4
    return p0

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

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

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x5

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    aget-byte p0, v0, v1

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

    nop

    :goto_a
    iput v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->lkKeiwjBWshgvkGa(Landroid/support/v8/renderscript/FieldPacker;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    const v1, 0x16

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public subInt2()Landroid/support/v8/renderscript/Int2;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Landroid/support/v8/renderscript/Int2;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->gbyqTOlvFIDliVen(Landroid/support/v8/renderscript/FieldPacker;)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->AnGHOwwlVDxybTrU(Landroid/support/v8/renderscript/FieldPacker;)I

    move-result v1

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

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    const v0, 0x16

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    iput v1, v0, Landroid/support/v8/renderscript/Int2;->y:I

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    iput p0, v0, Landroid/support/v8/renderscript/Int2;->x:I

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

    :goto_b
    new-instance v0, Landroid/support/v8/renderscript/Int2;

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
    goto/32 :goto_3

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_f
    const v1, 0x9

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public subInt3()Landroid/support/v8/renderscript/Int3;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->ZXuptFvJXDRMDifF(Landroid/support/v8/renderscript/FieldPacker;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    iput v1, v0, Landroid/support/v8/renderscript/Int3;->z:I

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
    new-instance v0, Landroid/support/v8/renderscript/Int3;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->PcWPgNbeTiBksJtF(Landroid/support/v8/renderscript/FieldPacker;)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iput p0, v0, Landroid/support/v8/renderscript/Int3;->x:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    :goto_7
    return-object v0

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    const v0, 0x14

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

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->bhWMZgfskqwzKurG(Landroid/support/v8/renderscript/FieldPacker;)I

    move-result p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x12

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

    :goto_e
    invoke-direct {v0}, Landroid/support/v8/renderscript/Int3;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput v1, v0, Landroid/support/v8/renderscript/Int3;->y:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public subInt4()Landroid/support/v8/renderscript/Int4;
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v1, v0, Landroid/support/v8/renderscript/Int4;->w:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->GzereNCJnUGlgLeU(Landroid/support/v8/renderscript/FieldPacker;)I

    move-result p0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-direct {v0}, Landroid/support/v8/renderscript/Int4;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->fyormlgbOJJgFOFF(Landroid/support/v8/renderscript/FieldPacker;)I

    move-result v1

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
    iput v1, v0, Landroid/support/v8/renderscript/Int4;->z:I

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
    iput p0, v0, Landroid/support/v8/renderscript/Int4;->x:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->qMyXCYzfpjRYpPVN(Landroid/support/v8/renderscript/FieldPacker;)I

    move-result v1

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

    :goto_7
    return-object v0

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->BCsOXbNSYIQKKCzO(Landroid/support/v8/renderscript/FieldPacker;)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Landroid/support/v8/renderscript/Int4;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_e
    const v1, 0x2

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

    :goto_f
    iput v1, v0, Landroid/support/v8/renderscript/Int4;->y:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    :goto_11
    add-int v0, v0, v1

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

    nop

    :goto_12
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_13
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
.end method

.method public subLong2()Landroid/support/v8/renderscript/Long2;
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->SVufLHEfJTJaSPHv(Landroid/support/v8/renderscript/FieldPacker;)J

    move-result-wide v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    iput-wide v1, v0, Landroid/support/v8/renderscript/Long2;->y:J

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    goto/32 :goto_f

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
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Landroid/support/v8/renderscript/Long2;-><init>()V

    goto/32 :goto_8

    nop

    nop

    :goto_7
    const v1, 0x18

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->TcBqCNhszlngnlVN(Landroid/support/v8/renderscript/FieldPacker;)J

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    new-instance v0, Landroid/support/v8/renderscript/Long2;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    iput-wide v1, v0, Landroid/support/v8/renderscript/Long2;->x:J

    nop

    nop

    nop

    goto/32 :goto_e

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object v0

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public subLong3()Landroid/support/v8/renderscript/Long3;
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Landroid/support/v8/renderscript/Long3;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Landroid/support/v8/renderscript/Long3;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iput-wide v1, v0, Landroid/support/v8/renderscript/Long3;->y:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    iput-wide v1, v0, Landroid/support/v8/renderscript/Long3;->x:J

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

    :goto_7
    const v1, 0x7

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    return-object v0

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_c
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->zHSlAQbdtQeJEops(Landroid/support/v8/renderscript/FieldPacker;)J

    move-result-wide v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    iput-wide v1, v0, Landroid/support/v8/renderscript/Long3;->z:J

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

    :goto_e
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->WmffpWBmPTQKlkdG(Landroid/support/v8/renderscript/FieldPacker;)J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->cdxpkHomHYFcJVhP(Landroid/support/v8/renderscript/FieldPacker;)J

    move-result-wide v1

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

    :goto_11
    const v0, 0x19

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
.end method

.method public subLong4()Landroid/support/v8/renderscript/Long4;
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    :goto_1
    iput-wide v1, v0, Landroid/support/v8/renderscript/Long4;->x:J

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->mmoyQbHPwNVsLPFV(Landroid/support/v8/renderscript/FieldPacker;)J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Landroid/support/v8/renderscript/Long4;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    goto/32 :goto_d

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
    const v0, 0xa

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

    :goto_8
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->pRAzuHEmHchRgaYS(Landroid/support/v8/renderscript/FieldPacker;)J

    move-result-wide v1

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

    :goto_9
    new-instance v0, Landroid/support/v8/renderscript/Long4;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    iput-wide v1, v0, Landroid/support/v8/renderscript/Long4;->y:J

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    iput-wide v1, v0, Landroid/support/v8/renderscript/Long4;->w:J

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

    :goto_c
    return-object v0

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->ZXVPVEnVFaKvdOCi(Landroid/support/v8/renderscript/FieldPacker;)J

    move-result-wide v1

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

    :goto_11
    const v1, 0x15

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    iput-wide v1, v0, Landroid/support/v8/renderscript/Long4;->z:J

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->oZzqVAjuiNwtxMTo(Landroid/support/v8/renderscript/FieldPacker;)J

    move-result-wide v1

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

.method public subMatrix2f()Landroid/support/v8/renderscript/Matrix2f;
    .locals 4

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-gez v1, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    iget-object v1, v0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x1a

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

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Landroid/support/v8/renderscript/Matrix2f;

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
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_11

    nop

    :goto_8
    array-length v1, v1

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v2, v0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_b
    aput v3, v2, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    goto :goto_9

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix2f;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v1, v1, -0x1

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

    :goto_15
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->EHAkHnRDsKmNSkxn(Landroid/support/v8/renderscript/FieldPacker;)F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public subMatrix3f()Landroid/support/v8/renderscript/Matrix3f;
    .locals 4

    goto/32 :goto_5

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_1
    if-gez v1, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    aput v3, v2, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix3f;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    array-length v1, v1

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v2, v0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c
    add-int/lit8 v1, v1, -0x1

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

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    return-object v0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, v0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

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

    :goto_12
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->oqhifkHZOPMFLxZc(Landroid/support/v8/renderscript/FieldPacker;)F

    move-result v3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Landroid/support/v8/renderscript/Matrix3f;

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

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public subMatrix4f()Landroid/support/v8/renderscript/Matrix4f;
    .locals 4

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_1
    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix4f;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    aput v3, v2, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    iget-object v1, v0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->YZyumeRgUcQINeca(Landroid/support/v8/renderscript/FieldPacker;)F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Landroid/support/v8/renderscript/Matrix4f;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    if-gez v1, :cond_1

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

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    iget-object v2, v0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_14

    nop

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object v0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    array-length v1, v1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x9

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public subShort2()Landroid/support/v8/renderscript/Short2;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-short p0, v0, Landroid/support/v8/renderscript/Short2;->x:S

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-direct {v0}, Landroid/support/v8/renderscript/Short2;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    new-instance v0, Landroid/support/v8/renderscript/Short2;

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
    rem-int v0, v0, v1

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

    :goto_7
    goto/32 :goto_a

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_c
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->FIECOQrJEhGYbeCu(Landroid/support/v8/renderscript/FieldPacker;)S

    move-result v1

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

    :goto_d
    iput-short v1, v0, Landroid/support/v8/renderscript/Short2;->y:S

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x3

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
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->EchModvmVqEDLazJ(Landroid/support/v8/renderscript/FieldPacker;)S

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public subShort3()Landroid/support/v8/renderscript/Short3;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->ISqoWroYEuKuuWto(Landroid/support/v8/renderscript/FieldPacker;)S

    move-result p0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    const v0, 0x19

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
    iput-short v1, v0, Landroid/support/v8/renderscript/Short3;->z:S

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    const v1, 0x19

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

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    new-instance v0, Landroid/support/v8/renderscript/Short3;

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

    :goto_7
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->lhPlqNfwEuYyOBjv(Landroid/support/v8/renderscript/FieldPacker;)S

    move-result v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->SGMGcdKhzilfHsuO(Landroid/support/v8/renderscript/FieldPacker;)S

    move-result v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_a
    iput-short p0, v0, Landroid/support/v8/renderscript/Short3;->x:S

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    :goto_e
    return-object v0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-short v1, v0, Landroid/support/v8/renderscript/Short3;->y:S

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0}, Landroid/support/v8/renderscript/Short3;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public subShort4()Landroid/support/v8/renderscript/Short4;
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    iput-short v1, v0, Landroid/support/v8/renderscript/Short4;->y:S

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

    :goto_1
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Landroid/support/v8/renderscript/Short4;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    return-object v0

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

    nop

    nop

    :goto_5
    const v1, 0xa

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

    :goto_6
    iput-short v1, v0, Landroid/support/v8/renderscript/Short4;->z:S

    nop

    goto/32 :goto_d

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

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->GKPxcRMyLRYziHZn(Landroid/support/v8/renderscript/FieldPacker;)S

    move-result v1

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

    :goto_9
    const v0, 0xb

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

    :goto_a
    iput-short v1, v0, Landroid/support/v8/renderscript/Short4;->w:S

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->JEkRdOGgMJFRkUwA(Landroid/support/v8/renderscript/FieldPacker;)S

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_d
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->qoPDwQzzXPKDKpLK(Landroid/support/v8/renderscript/FieldPacker;)S

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_f
    new-instance v0, Landroid/support/v8/renderscript/Short4;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    iput-short p0, v0, Landroid/support/v8/renderscript/Short4;->x:S

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    invoke-static {p0}, Landroid/support/v8/renderscript/FieldPacker;->jnktFCNHaPVOITkT(Landroid/support/v8/renderscript/FieldPacker;)S

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public subalign(I)V
    .locals 2

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_29

    nop

    :goto_1
    goto/32 :goto_17

    nop

    nop

    :goto_2
    iput p1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_3
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    :goto_4
    iget-object p1, p0, Landroid/support/v8/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    and-int v1, p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    if-eq p1, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    iget p1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    iget p1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v1, :cond_2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_2
    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    iget v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_d
    add-int/lit8 p1, p1, -0x1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_e
    const-string v0, "argument must be a non-negative non-zero power of 2: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_f
    goto/16 :goto_1f

    nop

    nop

    :goto_10
    goto/32 :goto_1b

    nop

    nop

    :goto_11
    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_13
    invoke-static {v0, p1}, Landroid/support/v8/renderscript/FieldPacker;->jGezdtaLwpEvtFId(Ljava/util/BitSet;I)V

    goto/32 :goto_f

    nop

    nop

    :goto_14
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p1, v0}, Landroid/support/v8/renderscript/FieldPacker;->faczTNxTHttLoqSH(Ljava/util/BitSet;I)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    :goto_17
    add-int/lit8 v0, p1, -0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_18
    and-int v1, p1, v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    invoke-static {p1, v0}, Landroid/support/v8/renderscript/FieldPacker;->cDtKnWhJzkTIiHEW(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    :goto_1c
    goto/32 :goto_21

    nop

    nop

    :goto_1d
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1e
    if-gtz p1, :cond_4

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_4
    :goto_1f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

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

    :goto_21
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

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

    :goto_22
    iput p1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v1, 0xf

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    add-int/lit8 v0, v0, -0x1

    nop

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

    :goto_27
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_28
    throw p0

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_23

    nop

    nop

    nop

    nop
.end method
