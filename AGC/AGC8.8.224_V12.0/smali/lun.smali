.class public final Llun;
.super Lluq;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Llun;

    const-string v1, ":f250-thumbnail"

    sget-object v2, Looj;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Llun;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lluq;-><init>([BI)V

    return-void
.end method
