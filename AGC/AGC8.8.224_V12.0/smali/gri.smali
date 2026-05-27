.class final Lgri;
.super Lgrp;


# instance fields
.field final synthetic a:Lgrr;


# direct methods
.method public constructor <init>(Lgrr;)V
    .locals 0

    iput-object p1, p0, Lgri;->a:Lgrr;

    invoke-direct {p0}, Lgrp;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lgri;->a:Lgrr;

    iget-object v0, v0, Lgrr;->d:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lgri;->a:Lgrr;

    iget-object v1, v0, Lgrr;->d:Lhiu;

    iget-object v0, v0, Lgrr;->f:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
