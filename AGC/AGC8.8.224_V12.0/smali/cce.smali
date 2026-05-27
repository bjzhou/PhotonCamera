.class public final Lcce;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcce;->a:Loiw;

    iput-object p2, p0, Lcce;->b:Loiw;

    iput-object p3, p0, Lcce;->c:Loiw;

    iput-object p4, p0, Lcce;->d:Loiw;

    iput-object p5, p0, Lcce;->e:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;Loiw;Loiw;)Lcce;
    .locals 7

    new-instance v6, Lcce;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcce;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v6
.end method


# virtual methods
.method public final b()Ldfa;
    .locals 9

    iget-object v0, p0, Lcce;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lgdk;

    invoke-static {}, Lftp;->d()Lgfp;

    move-result-object v3

    iget-object v0, p0, Lcce;->b:Loiw;

    check-cast v0, Lfwo;

    invoke-virtual {v0}, Lfwo;->a()Lfuz;

    move-result-object v4

    iget-object v0, p0, Lcce;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljvs;

    iget-object v0, p0, Lcce;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lkoe;

    iget-object v0, p0, Lcce;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ldhi;

    new-instance v0, Ldfa;

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ldfa;-><init>(Lgdk;Lgfp;Lfuz;Ljvs;Lkoe;Ldhi;[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcce;->b()Ldfa;

    move-result-object v0

    return-object v0
.end method
