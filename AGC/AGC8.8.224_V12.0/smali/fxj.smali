.class public final synthetic Lfxj;
.super Ljava/lang/Object;

# interfaces
.implements Lmqi;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lfxk;Ljava/util/List;Lgyq;I)V
    .locals 0

    iput p4, p0, Lfxj;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfxj;->a:Ljava/lang/Object;

    iput-object p2, p0, Lfxj;->b:Ljava/lang/Object;

    iput-object p3, p0, Lfxj;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgwd;Lhkt;Lgto;I)V
    .locals 0

    iput p4, p0, Lfxj;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfxj;->c:Ljava/lang/Object;

    iput-object p2, p0, Lfxj;->b:Ljava/lang/Object;

    iput-object p3, p0, Lfxj;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgxi;Lgxy;Lgyb;I)V
    .locals 0

    iput p4, p0, Lfxj;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfxj;->a:Ljava/lang/Object;

    iput-object p2, p0, Lfxj;->c:Ljava/lang/Object;

    iput-object p3, p0, Lfxj;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkad;Lcom/google/android/apps/camera/stats/timing/OneCameraTiming;Lftg;I)V
    .locals 0

    iput p4, p0, Lfxj;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfxj;->b:Ljava/lang/Object;

    iput-object p2, p0, Lfxj;->c:Ljava/lang/Object;

    iput-object p3, p0, Lfxj;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lfxj;->d:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfxj;->a:Ljava/lang/Object;

    iget-object v1, p0, Lfxj;->c:Ljava/lang/Object;

    iget-object v2, p0, Lfxj;->b:Ljava/lang/Object;

    check-cast p1, Lgxt;

    check-cast v2, Lgyb;

    invoke-virtual {v2}, Lgyb;->name()Ljava/lang/String;

    new-instance v3, Lfcq;

    check-cast v1, Lgxy;

    const/4 v4, 0x3

    invoke-direct {v3, v1, p1, v2, v4}, Lfcq;-><init>(Lgxy;Lgxt;Lgyb;I)V

    check-cast v0, Lgxi;

    invoke-virtual {v0, v3}, Lgxi;->d(Ljava/util/function/Consumer;)V

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lfxj;->c:Ljava/lang/Object;

    iget-object v2, p0, Lfxj;->b:Ljava/lang/Object;

    iget-object v3, p0, Lfxj;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/libraries/camera/exif/ExifInterface;

    check-cast v2, Lhkt;

    iget-object v4, v2, Lhkt;->a:Lkqi;

    sget-object v5, Lkqi;->c:Lkqi;

    invoke-virtual {v4, v5}, Lkqi;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, Lkds;

    invoke-direct {v4, p1}, Lkds;-><init>(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    move-object p1, v0

    check-cast p1, Lgwd;

    invoke-virtual {p1}, Lgwd;->d()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lkds;->g(J)V

    iget-boolean p1, v2, Lhkt;->e:Z

    if-eqz p1, :cond_2

    iget-object p1, v4, Lkds;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    sget v5, Lcom/google/android/libraries/camera/exif/ExifInterface;->Y:I

    invoke-virtual {p1, v5}, Lcom/google/android/libraries/camera/exif/ExifInterface;->k(I)Lkdq;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lkdq;->m()[I

    move-result-object v5

    if-eqz v5, :cond_1

    array-length v6, v5

    if-gtz v6, :cond_0

    goto :goto_0

    :cond_0
    aget v1, v5, v1

    goto :goto_0

    :cond_1
    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lkdq;->g(I)Z

    iget-object v1, v4, Lkds;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lkdq;)V

    :cond_2
    iget-object p1, v2, Lhkt;->d:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, v2, Lhkt;->d:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    invoke-virtual {v4, p1}, Lkds;->d(Landroid/location/Location;)V

    :cond_3
    iget-object p1, v2, Lhkt;->f:Lgcf;

    sget-object v1, Lgcf;->c:Lgcf;

    if-ne p1, v1, :cond_4

    iget-object p1, v4, Lkds;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->TAG_SOFTWARE:I

    invoke-virtual {p1, v1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->p(I)V

    :cond_4
    if-eqz v3, :cond_6

    check-cast v3, Lgto;

    invoke-virtual {v3}, Lgto;->d()Z

    move-result p1

    const-wide/16 v5, 0xa

    if-eqz p1, :cond_5

    iget p1, v3, Lgto;->d:F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Writing water depth: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " m"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->aQ:I

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {p1, v7}, Lkds;->i(Ljava/lang/Float;Ljava/lang/Long;)Lkac;

    move-result-object p1

    invoke-virtual {v4, v1, p1}, Lkds;->c(ILjava/lang/Object;)V

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, v3, Lgto;->g:J

    const-wide/16 v11, 0x1388

    add-long/2addr v9, v11

    cmp-long p1, v7, v9

    if-gtz p1, :cond_6

    iget p1, v3, Lgto;->f:F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing temperature: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " C"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->aP:I

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1, v3}, Lkds;->i(Ljava/lang/Float;Ljava/lang/Long;)Lkac;

    move-result-object p1

    invoke-virtual {v4, v1, p1}, Lkds;->c(ILjava/lang/Object;)V

    :cond_6
    iget-object p1, v4, Lkds;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    :cond_7
    check-cast v0, Lgwd;

    iget-object v1, v0, Lgwd;->u:Ljew;

    invoke-virtual {v1, p1}, Ljew;->n(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    iget-object v0, v0, Lgwd;->i:Lhjc;

    check-cast v0, Lhjd;

    iput-object p1, v0, Lhjd;->g:Lcom/google/android/libraries/camera/exif/ExifInterface;

    invoke-virtual {v2, p1}, Lhkt;->a(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lfxj;->b:Ljava/lang/Object;

    iget-object v0, p0, Lfxj;->c:Ljava/lang/Object;

    iget-object v1, p0, Lfxj;->a:Ljava/lang/Object;

    invoke-interface {p1}, Lkad;->close()V

    sget-object p1, Lhka;->e:Lhka;

    move-object v2, v0

    check-cast v2, Lhkh;

    invoke-virtual {v2, p1}, Lhkh;->h(Ljava/lang/Enum;)V

    check-cast v0, Lcom/google/android/apps/camera/stats/timing/OneCameraTiming;

    iget-object p1, v0, Lcom/google/android/apps/camera/stats/timing/OneCameraTiming;->b:Lkbf;

    invoke-interface {p1}, Lkbf;->a()V

    sget-object p1, Lkbf;->b:Lkbf;

    iput-object p1, v0, Lcom/google/android/apps/camera/stats/timing/OneCameraTiming;->b:Lkbf;

    invoke-virtual {v2}, Lhkh;->close()V

    return-object v1

    :pswitch_2
    iget-object v0, p0, Lfxj;->a:Ljava/lang/Object;

    iget-object v2, p0, Lfxj;->b:Ljava/lang/Object;

    iget-object v3, p0, Lfxj;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_9

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v1, v4, :cond_8

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfws;

    invoke-virtual {v4}, Lkoy;->close()V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfws;

    invoke-static {p1}, Lgqr;->b(Lfws;)Lgqq;

    move-result-object p1

    check-cast v0, Lfxk;

    iget-object v1, v0, Lfxk;->d:Lkab;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p1, Lgqq;->c:Lkab;

    check-cast v3, Lgyq;

    iput-object v3, p1, Lgqq;->g:Lgyq;

    iget-object v0, v0, Lfxk;->b:Lfte;

    iget-object v0, v0, Lfte;->d:Lklv;

    iput-object v0, p1, Lgqq;->a:Lklv;

    invoke-virtual {p1}, Lgqq;->a()Lgqr;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
