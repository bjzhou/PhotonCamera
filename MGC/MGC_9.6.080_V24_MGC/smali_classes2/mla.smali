.class public final Lmla;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lpsz;

.field public b:Lrss;

.field public c:Lrss;

.field public d:Z

.field public e:Lkvx;

.field public f:Lj$/util/Optional;


# direct methods
.method public constructor <init>(Lpsz;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iput-object v0, p0, Lmla;->b:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object v0, p0, Lmla;->c:Lrss;

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
    iput-object v0, p0, Lmla;->e:Lkvx;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Lmla;->d:Z

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lmla;->a:Lpsz;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

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

    :goto_9
    iput-object v0, p0, Lmla;->f:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v0, Lkvx;->c:Lkvx;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/camera/exif/ExifInterface;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lmla;->b:Lrss;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method
