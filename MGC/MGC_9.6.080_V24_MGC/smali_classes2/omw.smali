.class public final Lomw;
.super Lolk;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/os/Bundle;

.field public c:Ljava/lang/String;

.field public final d:Landroid/app/ApplicationErrorReport;

.field public e:Ljava/lang/String;

.field public f:Lcom/google/android/gms/common/data/BitmapTeleporter;

.field public final g:Ljava/lang/String;

.field public h:Ljava/util/List;

.field public i:Z

.field public j:Lone;

.field public k:Lomz;

.field public l:Z

.field public m:Landroid/graphics/Bitmap;

.field public n:Ljava/lang/String;

.field public o:Z

.field public p:J

.field public q:Z

.field public r:Ljava/lang/String;

.field public s:Lomq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lomx;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Lomx;-><init>()V

    goto/32 :goto_3

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
    sput-object v0, Lomw;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/app/ApplicationErrorReport;Ljava/lang/String;Lcom/google/android/gms/common/data/BitmapTeleporter;Ljava/lang/String;Ljava/util/List;ZLone;Lomz;ZLandroid/graphics/Bitmap;Ljava/lang/String;ZJZLjava/lang/String;Lomq;)V
    .locals 3

    goto/32 :goto_2f

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
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xe

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    :goto_4
    move-object/from16 v1, p19

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_6
    iput-object v1, v0, Lomw;->b:Landroid/os/Bundle;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object v1, p10

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v1, Ljava/util/ArrayList;

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

    :goto_9
    move-object v0, p0

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v1, v0, Lomw;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_b
    move-object v1, p2

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-wide/from16 v1, p16

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_e
    iput-object v1, v0, Lomw;->k:Lomz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    :goto_11
    invoke-direct {v1}, Landroid/app/ApplicationErrorReport;-><init>()V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v1, v0, Lomw;->a:Ljava/lang/String;

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

    :goto_14
    iput-object v1, v0, Lomw;->n:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_15
    if-eqz p8, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v1, v0, Lomw;->h:Ljava/util/List;

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

    :goto_17
    iput-boolean v1, v0, Lomw;->q:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_18
    if-eqz p2, :cond_1

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    :goto_1a
    move-object v1, p11

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1b
    iput-boolean v1, v0, Lomw;->i:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1c
    iput-wide v1, v0, Lomw;->p:J

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_1d
    new-instance v1, Landroid/os/Bundle;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move-object v1, p6

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_1f
    iput-object v1, v0, Lomw;->s:Lomq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_20
    iput-boolean v1, v0, Lomw;->l:Z

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_21
    if-eqz p4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_27

    nop

    nop

    :goto_22
    iput-object v1, v0, Lomw;->d:Landroid/app/ApplicationErrorReport;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_24
    move/from16 v1, p15

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

    :goto_25
    move-object v1, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_26
    move-object v1, p1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_27
    new-instance v1, Landroid/app/ApplicationErrorReport;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_29
    move-object v1, p8

    nop

    nop

    :goto_2a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2b
    iput-object v1, v0, Lomw;->m:Landroid/graphics/Bitmap;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_c

    nop

    nop

    :goto_2d
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2e
    move v1, p9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2f
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_30
    iput-object v1, v0, Lomw;->j:Lone;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_31
    move-object v1, p5

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_32
    move-object/from16 v1, p13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_33
    iput-boolean v1, v0, Lomw;->o:Z

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

    :goto_34
    iput-object v1, v0, Lomw;->e:Ljava/lang/String;

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

    :goto_35
    move-object v1, p4

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    move-object v1, p7

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_2a

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_29

    nop

    nop

    :goto_3a
    move/from16 v1, p18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3b
    iput-object v1, v0, Lomw;->f:Lcom/google/android/gms/common/data/BitmapTeleporter;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_3c
    invoke-direct {p0}, Lolk;-><init>()V

    goto/32 :goto_26

    nop

    nop

    :goto_3d
    move-object/from16 v1, p20

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

    :goto_3e
    goto :goto_36

    nop

    :goto_3f
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_40
    move v1, p12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_41
    iput-object v1, v0, Lomw;->g:Ljava/lang/String;

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

    :goto_42
    iput-object v1, v0, Lomw;->r:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_43
    move-object/from16 v1, p14

    nop

    nop

    goto/32 :goto_14

    nop

    nop
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-static {p0, p1, p2}, Lomx;->a(Lomw;Landroid/os/Parcel;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
