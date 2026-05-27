.class public final Lhhy;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:D

.field public d:B

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 0

    iput-wide p1, p0, Lhhy;->c:D

    iget-byte p1, p0, Lhhy;->d:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Lhhy;->d:B

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lhhy;->b:I

    iget-byte p1, p0, Lhhy;->d:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lhhy;->d:B

    return-void
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lhhy;->a:I

    iget-byte p1, p0, Lhhy;->d:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lhhy;->d:B

    return-void
.end method
