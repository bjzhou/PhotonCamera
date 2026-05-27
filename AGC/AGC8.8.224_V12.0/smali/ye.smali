.class public final Lye;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final a:Ljava/util/Comparator;

.field public static final b:Lye;

.field public static final c:Lye;


# instance fields
.field private final synthetic d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lye;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lye;-><init>(I)V

    sput-object v0, Lye;->a:Ljava/util/Comparator;

    new-instance v0, Lye;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lye;-><init>(I)V

    sput-object v0, Lye;->c:Lye;

    new-instance v0, Lye;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lye;-><init>(I)V

    sput-object v0, Lye;->b:Lye;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lye;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    iget v0, p0, Lye;->d:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lpap;

    check-cast p2, Lpap;

    invoke-virtual {p1}, Lpap;->a()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Fallback-Cronet-Provider"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    goto/16 :goto_9

    :pswitch_0
    check-cast p1, Lkiu;

    check-cast p2, Lkiu;

    sget-object v0, Lkix;->a:Ljava/util/Comparator;

    iget-object p1, p1, Lkiu;->b:Lkkb;

    iget-object p2, p2, Lkiu;->b:Lkkb;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    :pswitch_1
    check-cast p1, Lkfu;

    check-cast p2, Lkfu;

    invoke-virtual {p1}, Lkfu;->r()J

    move-result-wide v0

    invoke-virtual {p2}, Lkfu;->r()J

    move-result-wide p1

    cmp-long v2, v0, p1

    return v2

    :pswitch_2
    check-cast p1, Lkaf;

    check-cast p2, Lkaf;

    invoke-virtual {p1}, Lkaf;->b()J

    move-result-wide v0

    invoke-virtual {p2}, Lkaf;->b()J

    move-result-wide v2

    cmp-long v4, v0, v2

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    iget v0, p1, Lkaf;->a:I

    iget v1, p1, Lkaf;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p2, Lkaf;->a:I

    iget v2, p2, Lkaf;->b:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Lkba;->i(II)I

    move-result v4

    :cond_0
    if-nez v4, :cond_1

    iget p1, p1, Lkaf;->a:I

    iget p2, p2, Lkaf;->a:I

    invoke-static {p1, p2}, Lkba;->i(II)I

    move-result p1

    return p1

    :cond_1
    return v4

    :pswitch_3
    check-cast p1, Ljwu;

    check-cast p2, Ljwu;

    invoke-virtual {p1}, Ljwu;->a()J

    move-result-wide v4

    invoke-virtual {p2}, Ljwu;->a()J

    move-result-wide p1

    cmp-long v0, v4, p1

    if-gez v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    cmp-long v0, v4, p1

    if-lez v0, :cond_3

    :goto_0
    return v1

    :cond_3
    return v3

    :pswitch_4
    check-cast p1, Lcom/google/android/gms/common/api/Scope;

    check-cast p2, Lcom/google/android/gms/common/api/Scope;

    iget-object p1, p1, Lcom/google/android/gms/common/api/Scope;->b:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/common/api/Scope;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :pswitch_5
    check-cast p1, Lkaf;

    check-cast p2, Lkaf;

    iget v0, p1, Lkaf;->a:I

    iget p1, p1, Lkaf;->b:I

    mul-int v0, v0, p1

    iget p1, p2, Lkaf;->a:I

    iget p2, p2, Lkaf;->b:I

    mul-int p1, p1, p2

    sub-int/2addr p1, v0

    return p1

    :pswitch_6
    check-cast p1, Lbob;

    check-cast p2, Lbob;

    invoke-virtual {p1}, Lbob;->b()I

    move-result v0

    invoke-virtual {p2}, Lbob;->b()I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lbob;->a()I

    move-result p1

    invoke-virtual {p2}, Lbob;->a()I

    move-result p2

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lbob;->b()I

    move-result p1

    invoke-virtual {p2}, Lbob;->b()I

    move-result p2

    :goto_1
    sub-int/2addr p1, p2

    return p1

    :pswitch_7
    check-cast p1, [I

    check-cast p2, [I

    aget v0, p1, v3

    aget v1, p2, v3

    if-ne v0, v1, :cond_5

    aget p1, p1, v2

    aget p2, p2, v2

    sub-int/2addr p1, p2

    goto :goto_2

    :cond_5
    sub-int p1, v0, v1

    :goto_2
    return p1

    :pswitch_8
    check-cast p1, [I

    check-cast p2, [I

    aget p1, p1, v3

    aget p2, p2, v3

    sub-int/2addr p1, p2

    return p1

    :pswitch_9
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-static {p1}, Lafh;->c(Landroid/view/View;)F

    move-result p1

    invoke-static {p2}, Lafh;->c(Landroid/view/View;)F

    move-result p2

    cmpl-float v0, p1, p2

    if-lez v0, :cond_6

    goto :goto_3

    :cond_6
    cmpg-float p1, p1, p2

    if-gez p1, :cond_7

    const/4 v1, 0x1

    :goto_3
    return v1

    :cond_7
    return v3

    :pswitch_a
    check-cast p1, Lks;

    check-cast p2, Lks;

    iget-object v0, p1, Lks;->d:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_8

    const/4 v4, 0x0

    goto :goto_4

    :cond_8
    const/4 v4, 0x1

    :goto_4
    iget-object v5, p2, Lks;->d:Landroid/support/v7/widget/RecyclerView;

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    goto :goto_5

    :cond_9
    const/4 v5, 0x1

    :goto_5
    if-eq v4, v5, :cond_a

    if-nez v0, :cond_d

    const/4 v1, 0x1

    goto :goto_6

    :cond_a
    iget-boolean v0, p1, Lks;->a:Z

    iget-boolean v4, p2, Lks;->a:Z

    if-eq v0, v4, :cond_c

    if-eqz v0, :cond_b

    goto :goto_6

    :cond_b
    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    iget v0, p2, Lks;->b:I

    iget v1, p1, Lks;->b:I

    sub-int v1, v0, v1

    if-nez v1, :cond_d

    iget p1, p1, Lks;->c:I

    iget p2, p2, Lks;->c:I

    sub-int v1, p1, p2

    if-nez v1, :cond_d

    const/4 v1, 0x0

    :cond_d
    :goto_6
    return v1

    :pswitch_b
    check-cast p1, Lyh;

    check-cast p2, Lyh;

    iget p1, p1, Lyh;->c:I

    iget p2, p2, Lyh;->c:I

    sub-int/2addr p1, p2

    return p1

    :cond_e
    invoke-virtual {p2}, Lpap;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {p1}, Lpap;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lpap;->b()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    :goto_7
    array-length v0, p1

    if-ge v3, v0, :cond_11

    array-length v1, p2

    if-ge v3, v1, :cond_11

    :try_start_0
    aget-object v0, p1, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v1, p2, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_10

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    aget-object p1, p1, v3

    aget-object p2, p2, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to convert version segments into integers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " & "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_11
    array-length p1, p2

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result p1

    :goto_8
    neg-int v1, p1

    :goto_9
    return v1

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The input values cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :goto_a
    throw p1

    :goto_b
    goto :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
