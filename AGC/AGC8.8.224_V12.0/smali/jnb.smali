.class public final Ljnb;
.super Ljhn;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:Lcom/google/android/gms/location/LocationRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljnd;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljnd;-><init>(I)V

    sput-object v0, Ljnb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/LocationRequest;Ljava/util/List;ZZZZJ)V
    .locals 25

    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Ljhn;-><init>()V

    iget v1, v0, Lcom/google/android/gms/location/LocationRequest;->a:I

    iget-wide v2, v0, Lcom/google/android/gms/location/LocationRequest;->b:J

    iget-wide v4, v0, Lcom/google/android/gms/location/LocationRequest;->c:J

    iget-wide v6, v0, Lcom/google/android/gms/location/LocationRequest;->d:J

    iget-wide v8, v0, Lcom/google/android/gms/location/LocationRequest;->e:J

    iget v10, v0, Lcom/google/android/gms/location/LocationRequest;->f:I

    iget v11, v0, Lcom/google/android/gms/location/LocationRequest;->g:F

    iget-boolean v12, v0, Lcom/google/android/gms/location/LocationRequest;->h:Z

    iget-wide v13, v0, Lcom/google/android/gms/location/LocationRequest;->i:J

    iget v15, v0, Lcom/google/android/gms/location/LocationRequest;->j:I

    move-wide/from16 v16, v13

    iget v13, v0, Lcom/google/android/gms/location/LocationRequest;->k:I

    iget-object v14, v0, Lcom/google/android/gms/location/LocationRequest;->l:Ljava/lang/String;

    move/from16 v18, v13

    iget-boolean v13, v0, Lcom/google/android/gms/location/LocationRequest;->m:Z

    move-object/from16 v19, v14

    iget-object v14, v0, Lcom/google/android/gms/location/LocationRequest;->n:Landroid/os/WorkSource;

    iget-object v0, v0, Lcom/google/android/gms/location/LocationRequest;->o:Ljlx;

    if-eqz p2, :cond_2

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x0

    move-object/from16 p1, v0

    move-object/from16 v20, v14

    move/from16 v21, v15

    goto :goto_1

    :cond_0
    new-instance v14, Landroid/os/WorkSource;

    invoke-direct {v14}, Landroid/os/WorkSource;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 p1, v0

    move-object/from16 v0, v21

    check-cast v0, Ljgc;

    move/from16 v21, v15

    iget v15, v0, Ljgc;->a:I

    iget-object v0, v0, Ljgc;->b:Ljava/lang/String;

    invoke-static {v14, v15, v0}, Ljic;->a(Landroid/os/WorkSource;ILjava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v15, v21

    goto :goto_0

    :cond_1
    move-object/from16 p1, v0

    move/from16 v21, v15

    move-object/from16 v20, v14

    goto :goto_1

    :cond_2
    move-object/from16 p1, v0

    move/from16 v21, v15

    move-object/from16 v20, v14

    :goto_1
    const/4 v0, 0x0

    const/4 v14, 0x1

    if-eqz p3, :cond_3

    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v15, v0

    const-string v0, "granularity %d must be a Granularity.GRANULARITY_* constant"

    invoke-static {v14, v0, v15}, Ljhp;->U(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/16 v21, 0x1

    goto :goto_2

    :cond_3
    :goto_2
    if-eqz p4, :cond_4

    new-array v0, v14, [Ljava/lang/Object;

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v22, 0x0

    aput-object v18, v0, v22

    const-string v15, "throttle behavior %d must be a ThrottleBehavior.THROTTLE_* constant"

    invoke-static {v14, v15, v0}, Ljhp;->U(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v15, 0x2

    goto :goto_3

    :cond_4
    const/16 v22, 0x0

    move/from16 v15, v18

    :goto_3
    or-int v18, p5, v13

    or-int v12, p6, v12

    const-wide v23, 0x7fffffffffffffffL

    cmp-long v0, p7, v23

    if-eqz v0, :cond_7

    const-wide/16 v16, -0x1

    cmp-long v0, p7, v16

    if-eqz v0, :cond_6

    const-wide/16 v16, 0x0

    cmp-long v0, p7, v16

    if-ltz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    const/4 v0, 0x1

    :goto_4
    const-string v13, "maxUpdateAgeMillis must be greater than or equal to 0, or IMPLICIT_MAX_UPDATE_AGE"

    invoke-static {v0, v13}, Ljhp;->T(ZLjava/lang/Object;)V

    move-wide/from16 v16, p7

    goto :goto_5

    :cond_7
    :goto_5
    move-object/from16 v22, p1

    move v0, v1

    move-wide v1, v2

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v8

    move v9, v10

    move v10, v11

    move v11, v12

    move-wide/from16 v12, v16

    move-object/from16 v16, v19

    move/from16 v14, v21

    move/from16 v17, v18

    move-object/from16 v18, v20

    move-object/from16 v19, v22

    invoke-static/range {v0 .. v19}, Ljmj;->a(IJJJJIFZJIILjava/lang/String;ZLandroid/os/WorkSource;Ljlx;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Ljnb;->a:Lcom/google/android/gms/location/LocationRequest;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljnb;

    if-eqz v0, :cond_0

    check-cast p1, Ljnb;

    iget-object v0, p0, Ljnb;->a:Lcom/google/android/gms/location/LocationRequest;

    iget-object p1, p1, Ljnb;->a:Lcom/google/android/gms/location/LocationRequest;

    invoke-static {v0, p1}, Ljhp;->af(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Ljnb;->a:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljnb;->a:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Ljhp;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Ljnb;->a:Lcom/google/android/gms/location/LocationRequest;

    const/4 v2, 0x1

    invoke-static {p1, v2, v1, p2}, Ljhp;->o(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v0}, Ljhp;->c(Landroid/os/Parcel;I)V

    return-void
.end method
