.class public final Llxz;
.super Laqc;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Laqc;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final a(Laqp;)V
    .locals 1

    const-string v0, "ALTER TABLE ResourceEntity ADD COLUMN provenance BLOB"

    invoke-interface {p1, v0}, Laqp;->g(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE AnnotachmentEntity ADD COLUMN provenance BLOB"

    invoke-interface {p1, v0}, Laqp;->g(Ljava/lang/String;)V

    return-void
.end method
