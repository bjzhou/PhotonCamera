.class final Lpbc;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:Landroid/hardware/HardwareBuffer;

.field final b:J

.field final c:I

.field private final d:Lprw;


# direct methods
.method public constructor <init>(Lprw;JI)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p4, p0, Lpbc;->c:I

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object p1, p0, Lpbc;->d:Lprw;

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

    :goto_4
    iput-object p1, p0, Lpbc;->a:Landroid/hardware/HardwareBuffer;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    iput-wide p2, p0, Lpbc;->b:J

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p1}, Lprw;->f()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method final a()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpbc;->d:Lprw;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lprw;->close()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lpbc;->a:Landroid/hardware/HardwareBuffer;

    nop

    nop

    nop

    goto/32 :goto_1

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

    :goto_5
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
