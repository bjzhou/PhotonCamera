.class public final Llkx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# static fields
.field public static final a:Llkx;


# instance fields
.field public final b:Lcom/google/googlex/gcam/AssetData;

.field private final c:Lpci;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    :goto_0
    const v1, 0x15

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
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    const-string v1, ""

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

    :goto_3
    new-instance v0, Llkx;

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
    goto/32 :goto_e

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, v1, v2, v2}, Llkx;-><init>(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;Lpci;)V

    goto/32 :goto_8

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

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_8
    sput-object v0, Llkx;->a:Llkx;

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

    :goto_9
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    const v0, 0x15

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
    goto/32 :goto_5

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

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;Lpci;)V
    .locals 2

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

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

    nop

    :goto_1
    long-to-int p0, v0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_4
    new-instance p3, Lcom/google/googlex/gcam/AssetData;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/16 p1, 0xf0f

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

    :goto_7
    iget-wide v0, p3, Lcom/google/googlex/gcam/AssetData;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    if-nez p2, :cond_1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v1, p3, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->AssetData_length_set(JLcom/google/googlex/gcam/AssetData;I)V

    goto/32 :goto_7

    nop

    nop

    :goto_a
    invoke-static {v0, v1, p3, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->AssetData_name_set(JLcom/google/googlex/gcam/AssetData;Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, v1, p3, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->AssetData_offset_set(JLcom/google/googlex/gcam/AssetData;I)V

    goto/32 :goto_f

    nop

    nop

    :goto_c
    iget-wide v0, p3, Lcom/google/googlex/gcam/AssetData;->a:J

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x11

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

    :goto_e
    const-string p1, "Empty asset file."

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

    :goto_f
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

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

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_13
    invoke-static {v0, v1, p3, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->AssetData_fd_set(JLcom/google/googlex/gcam/AssetData;I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lscs;->b()Lsdo;

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

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object p0, Llkz;->a:Lsdb;

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

    :goto_1c
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object p3, p0, Llkx;->c:Lpci;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_20
    invoke-direct {p3}, Lcom/google/googlex/gcam/AssetData;-><init>()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_22
    iget-wide v0, p3, Lcom/google/googlex/gcam/AssetData;->a:J

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

    :goto_23
    iput-object p1, p0, Llkx;->b:Lcom/google/googlex/gcam/AssetData;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_26
    long-to-int p0, v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-wide v0, p3, Lcom/google/googlex/gcam/AssetData;->a:J

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

    :goto_28
    iput-object p3, p0, Llkx;->b:Lcom/google/googlex/gcam/AssetData;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Llkx;->c:Lpci;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lpci;->close()V

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method
