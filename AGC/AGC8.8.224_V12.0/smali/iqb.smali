.class public final Liqb;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lipp;


# instance fields
.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lipp;->b:Lipp;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lipp;

    const/4 v2, 0x1

    iput v2, v1, Lipp;->a:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lipp;

    sput-object v0, Liqb;->a:Lipp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Liqb;->b:I

    return-void
.end method

.method public static a()[B
    .locals 1

    sget-object v0, Liqb;->a:Lipp;

    invoke-virtual {v0}, Lnve;->J()[B

    move-result-object v0

    return-object v0
.end method
