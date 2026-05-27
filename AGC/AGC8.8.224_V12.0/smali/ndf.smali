.class public final Lndf;
.super Lndd;


# static fields
.field public static final a:Lndd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lndf;

    invoke-direct {v0}, Lndf;-><init>()V

    sput-object v0, Lndf;->a:Lndd;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lndd;-><init>()V

    new-instance v0, Lnde;

    invoke-direct {v0}, Lnde;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "No-op Provider"

    return-object v0
.end method
