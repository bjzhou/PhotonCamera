.class public final Lbjf;
.super Ljava/lang/Object;

# interfaces
.implements Lbjc;


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbjf;->b:I

    iput-boolean p2, p0, Lbjf;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lbgj;Lbjq;)Lbgw;
    .locals 0

    iget-boolean p1, p1, Lbgj;->h:Z

    if-nez p1, :cond_0

    const-string p1, "Animation contains merge paths but they are disabled."

    invoke-static {p1}, Lbll;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lbhf;

    invoke-direct {p1, p0}, Lbhf;-><init>(Lbjf;)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lbjf;->b:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "null"

    goto :goto_0

    :pswitch_0
    const-string v0, "EXCLUDE_INTERSECTIONS"

    goto :goto_0

    :pswitch_1
    const-string v0, "INTERSECT"

    goto :goto_0

    :pswitch_2
    const-string v0, "SUBTRACT"

    goto :goto_0

    :pswitch_3
    const-string v0, "ADD"

    goto :goto_0

    :pswitch_4
    const-string v0, "MERGE"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MergePaths{mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
