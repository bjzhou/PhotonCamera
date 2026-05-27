.class public final Lncr;
.super Ljava/lang/Object;

# interfaces
.implements Lncs;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lncr;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lncr;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lncr;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lnbq;
    .locals 9

    new-instance v8, Lndb;

    iget-object v1, p0, Lncr;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lncr;->b:Z

    sget-object v4, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    const/4 v5, 0x1

    sget-object v6, Lndc;->a:Ljava/util/Set;

    sget-object v7, Lndc;->b:Lncb;

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lndb;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/logging/Level;ZLjava/util/Set;Lncb;)V

    return-object v8
.end method
