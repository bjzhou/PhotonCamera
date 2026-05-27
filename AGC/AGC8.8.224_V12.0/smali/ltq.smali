.class public final Lltq;
.super Ljava/lang/Exception;


# instance fields
.field public final a:I


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lltq;->a:I

    return-void
.end method

.method public static varargs a(ILjava/lang/String;[Ljava/lang/Object;)Lltq;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    packed-switch p0, :pswitch_data_0

    const-string v1, "PASSWORD_LENGTH_INVALID"

    goto :goto_0

    :pswitch_0
    const-string v1, "SECURE_NETWORK_BUT_MISSING_PASSWORD"

    goto :goto_0

    :pswitch_1
    const-string v1, "OPEN_NETWORK_HAS_PASSWORD"

    goto :goto_0

    :pswitch_2
    const-string v1, "SSID_LENGTH_INVALID"

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Reason: %s. Additional details: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lltq;

    invoke-direct {p2, p0, p1}, Lltq;-><init>(ILjava/lang/String;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
