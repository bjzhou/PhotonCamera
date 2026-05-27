.class public final Lbts;
.super Ljava/lang/Object;

# interfaces
.implements Lcbb;


# instance fields
.field public final a:Ljava/security/MessageDigest;

.field private final b:Lfkg;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lfkg;->d()Lfkg;

    move-result-object v0

    iput-object v0, p0, Lbts;->b:Lfkg;

    iput-object p1, p0, Lbts;->a:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public final f()Lfkg;
    .locals 1

    iget-object v0, p0, Lbts;->b:Lfkg;

    return-object v0
.end method
