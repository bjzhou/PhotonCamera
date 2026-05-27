.class abstract Lj$/desugar/sun/nio/fs/q;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/nio/charset/Charset;

.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lj$/desugar/sun/nio/fs/q;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method static a()Ljava/nio/charset/Charset;
    .locals 1

    sget-object v0, Lj$/desugar/sun/nio/fs/q;->a:Ljava/nio/charset/Charset;

    return-object v0
.end method
