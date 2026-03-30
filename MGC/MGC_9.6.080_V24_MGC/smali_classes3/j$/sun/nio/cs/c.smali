.class public final Lj$/sun/nio/cs/c;
.super Ljava/nio/charset/Charset;
.source "SourceFile"


# static fields
.field public static final a:Lj$/sun/nio/cs/c;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lj$/sun/nio/cs/c;

    sget v1, Lj$/sun/nio/cs/d;->a:I

    const-string v12, "ISO_8859-1:1987"

    const-string v13, "ISO_8859_1"

    const-string v2, "iso-ir-100"

    const-string v3, "ISO_8859-1"

    const-string v4, "latin1"

    const-string v5, "l1"

    const-string v6, "IBM819"

    const-string v7, "cp819"

    const-string v8, "csISOLatin1"

    const-string v9, "819"

    const-string v10, "IBM-819"

    const-string v11, "ISO8859_1"

    const-string v14, "8859_1"

    const-string v15, "ISO8859-1"

    filled-new-array/range {v2 .. v15}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISO-8859-1"

    invoke-direct {v0, v2, v1}, Ljava/nio/charset/Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lj$/sun/nio/cs/c;->a:Lj$/sun/nio/cs/c;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/nio/charset/Charset;)Z
    .locals 0

    instance-of p1, p1, Lj$/sun/nio/cs/c;

    return p1
.end method

.method public final newDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 1

    new-instance v0, Lj$/sun/nio/cs/a;

    invoke-direct {v0, p0}, Lj$/sun/nio/cs/a;-><init>(Lj$/sun/nio/cs/c;)V

    return-object v0
.end method

.method public final newEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    new-instance v0, Lj$/sun/nio/cs/b;

    invoke-direct {v0, p0}, Lj$/sun/nio/cs/b;-><init>(Lj$/sun/nio/cs/c;)V

    return-object v0
.end method
